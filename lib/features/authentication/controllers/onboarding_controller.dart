import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() async {
    if (currentPageIndex.value == 2) {
      final SharedPreferences prefs = await _prefs;
      prefs.setInt('tour', 1);
      Get.offAll(const LoginScreen());

    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() async {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    final SharedPreferences prefs = await _prefs;
    prefs.setInt('tour', 1);
  }
}
