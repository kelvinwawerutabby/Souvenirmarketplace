import 'dart:async';

import 'package:eccomerceapp/utils/exceptions/auth_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  void isLoggedInUser() {
    StreamSubscription<User?> isLoggedIn =
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // return false;
      } else {
        // return true;
      }
    });
  }

  Future createUser(emailAddress, password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw AuthException('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future signUser(emailAddress, password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw AuthException('Wrong password provided for that user.');
      }
    }
  }
}
