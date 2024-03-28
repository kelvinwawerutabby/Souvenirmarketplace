
import 'package:eccomerceapp/navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  User? get auth_user => _firebaseUser.value;

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
          Get.snackbar("Creating Account","Successfully Created Account,redirection Login",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.green);
    } catch (e) {
      Get.snackbar("Error Creating Account", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    }
  }

  void signUser(emailAddress, password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
           Get.snackbar("SignIn Account","Successfully Logged IN",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.green);
      Get.to(() => const NavigationMenu());
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
