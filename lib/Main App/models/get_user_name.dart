import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetUsername extends StatelessWidget {
  final String documentId;

  GetUsername({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    print('Fetching data for user ID: $documentId');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            print('No data found for user ID: $documentId');
            return Text('No data found for this user.');
          }

          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          print('Data retrieved: $data');
          // Assuming 'first name' is the field containing the user's first name
          String firstName = data['first name'] ?? 'Unknown';
          return Text('First name: $firstName');
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}