import 'package:eccomerceapp/features/authentication/controllers/firebase_auth_controller.dart';
import 'package:eccomerceapp/features/authentication/screens/login/login.dart';
import 'package:eccomerceapp/navigation_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SSRoot extends GetWidget<AuthController> {
 
  //  return observabls
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (
        Get.find<AuthController>().auth_user != null)
          ? const NavigationMenu()
          : const LoginScreen();
    });
  }
}
