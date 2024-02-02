import 'package:eccomerceapp/features/authentication/screens/login/login.dart';
import 'package:eccomerceapp/features/authentication/screens/success_screen/success_screen.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: Column(
                children: [
            /// Image
            Image(image: const AssetImage(SImages.deliveredEmailIllustration),
            width: SHelperFunctions.screenWidth() * 0.6),
        const SizedBox(height: SSizes.defaultSpace,),

        /// Title & SubTitle
        Text(SText.confirmEmail, style: Theme
            .of(context)
            .textTheme
            .headlineMedium, textAlign: TextAlign.center,),
        const SizedBox(height: SSizes.defaultSpace,),
        Text('kelvinwaweru@gmail.com', style: Theme
            .of(context)
            .textTheme
            .labelLarge, textAlign: TextAlign.center,),
        const SizedBox(height: SSizes.defaultSpace,),
        Text(SText.confirmEmailSubTitle, style: Theme
            .of(context)
            .textTheme
            .labelMedium, textAlign: TextAlign.center,),
        const SizedBox(height: SSizes.defaultSpace,),

        /// Buttons
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () =>
            Get.to(() =>  SuccessScreen(
              image: SImages.staticSuccessIllustration,
              title: SText.yourAccountCreatedTitle,
              subTitle: SText.yourAccountCreatedSubTitle,
              onPressed: () => Get.to(() =>  const LoginScreen()),)),
              child: const Text(SText.tContinue),),),
          const SizedBox(height: SSizes.defaultSpace,),
          SizedBox(width: double.infinity,
            child: TextButton(
              onPressed: () {}, child: const Text(SText.resendEmail),),)
          ],
        ),
      ),
    ),);
  }
}
