import 'dart:async';

import 'package:eccomerceapp/utils/exceptions/auth_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// class AuthController {
//   void isLoggedInUser() {
//     StreamSubscription<User?> isLoggedIn =
//         FirebaseAuth.instance.authStateChanges().listen((User? user) {
//       if (user == null) {
//         // return false;
//       } else {
//         // return true;
//       }
//     });
//   }

//   Future createUser(emailAddress, password) async {
//     try {
//       final credential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailAddress,
//         password: password,
//       );
//       return credential;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         throw AuthException('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         throw AuthException('The account already exists for that email.');
//       }
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   Future signUser(emailAddress, password) async {
//     try {
//       final credential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: emailAddress, password: password);
//       return credential;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         throw AuthException('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         throw AuthException('Wrong password provided for that user.');
//       }
//     }
//   }
// }

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final Rx<User?> _firebaseUser;

  String? get auth_user => _firebaseUser.value?.email;

  @override
  void onInit() {
    super.onInit();
    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(emailAddress, password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
    } catch (e) {
      Get.snackbar("Error Creating Account", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    }
  }

  void signUser(emailAddress, password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      
    } catch (e) {
      Get.snackbar("Error Login In", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar("Error Signing Out", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    }
  }
}
