import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tape_ball_app/models/user.dart';

class SignUpController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signup(String fullName, String email, String password,
      String role, String location) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      if (user != null) {
        UserModel newUser = UserModel(
          id: user.uid,
          name: fullName,
          email: email,
          profilePicture: '',
          location: location,
          role: role,
        );

        await _firestore.collection('users').doc(user.uid).set(newUser.toMap());

        if (kDebugMode) {
          print('Signup Successful:');
        }
      }
    } catch (error) {
      print('Signup Error: $error');
    }
  }
}
