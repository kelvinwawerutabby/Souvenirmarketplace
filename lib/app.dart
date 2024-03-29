import 'package:eccomerceapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:eccomerceapp/features/bindings/authbinding.dart';
import 'package:eccomerceapp/utils/root.dart';
import 'package:flutter/material.dart';
import 'package:eccomerceapp/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboarding_provider.dart';

class SApp extends StatelessWidget {
  SApp({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingControllerProvider c =
        Get.put(OnBoardingControllerProvider());
    return GetMaterialApp(
        initialBinding: AuthBinding(),
        themeMode: ThemeMode.system,
        theme: SAppTheme.lightTheme,
        darkTheme: SAppTheme.darkTheme,
        // home: const OnBoardingScreen(),
        home: GetBuilder<OnBoardingControllerProvider>(
          builder: (_) {
          if (c.doneTour) {
            return SSRoot();
          } else {
            return const OnBoardingScreen();
          }
        }));
  }
}
