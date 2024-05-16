import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseStorage _storage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData {
  final _auth = FirebaseAuth.instance;

  Future<String> uploadImageToStorage(String childName, Uint8List file) async {
    Reference ref = _storage.ref().child(childName);
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> saveData({
    required Uint8List file,
  }) async {
    String resp = " Some Error Occurred";
    try {
      String imageUrl = await uploadImageToStorage('profileImage', file);
      var user = _auth.currentUser;
      if (user != null) {
        String userId = user.uid;
        await _firestore.collection('userProfile').doc(userId).set({
          'imageLink': imageUrl,
        });
        resp = 'success';
      } else {
        resp = 'User not logged in.';
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }

  Future<String> getUserProfileImageUrl() async {
  var user = _auth.currentUser;
  if (user != null) {
    String userId = user.uid;
    DocumentSnapshot snapshot =
        await _firestore.collection('userProfile').doc(userId).get();
    if (snapshot.exists) {
      Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;
      if (data != null && data.containsKey('imageLink')) {
        return data['imageLink'];
      }
    }
  }
  return ''; // Return empty string if no image found for the user
}
}