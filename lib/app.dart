import 'package:flutter/material.dart';
import 'package:eccomerceapp/utils/theme/theme.dart';
import 'package:eccomerceapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';
class SApp extends StatelessWidget {
  const SApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
