import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalproj/Main%20App/mainpages/edit_profile.dart';
import 'package:finalproj/Main%20App/models/add_data.dart';
import 'package:finalproj/Main%20App/models/get_user_name.dart';
import 'package:finalproj/Main%20App/models/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Signed in as ${user!.email}',
            ),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.grey[100],
              child: Text('Sign out'),
            ),
            Expanded(
              child: GetUsername(documentId: user!.uid),
            ),
          ],
        ),
      ),
    );
  }
}