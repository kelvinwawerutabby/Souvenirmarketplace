import 'package:eccomerceapp/common/style/spacing_styles.dart';
import 'package:eccomerceapp/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:eccomerceapp/features/authentication/screens/signup/signup.dart';
import 'package:eccomerceapp/navigation_menu.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/constants/text_strings.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo, Title & Sub-Title
              SLoginHeader(),
              ///Form
              SLoginForm(),

              /// Divider
              SFormDivider(dividerText: SText.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections,),
              ///Footer
              SSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? SImages.lightAppLogo : SImages.darkAppLogo),
        ),
        Text(SText.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: SSizes.sm),
        Text(SText.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
      child: Form(child: Column(
        children: [
        ///Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText:  SText.email
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),
          /// Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText:  SText.password
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields/2),
          ///Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(SText.rememberMe),
                ],
              ),
              ///Forget Password
              TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(SText.forgetPassword)),

            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          ///Sign I Button
          SizedBox( width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(SText.signIn))),
          const SizedBox(height: SSizes.spaceBtwSections,),
          ///Create Account Button
          SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(SText.createAccount))),
        ],
      ),
      ),
    );
  }
}

class SFormDivider extends StatelessWidget {
  const SFormDivider({
    super.key,  required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? SColors.darkGrey: SColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(SText.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? SColors.darkGrey: SColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image( width: SSizes.iconMd,height: SSizes.iconMd, image: AssetImage(SImages.google)),
          ),
        ),
        const SizedBox(width: SSizes.spaceBtwSections,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image( width: SSizes.iconMd,height: SSizes.iconMd, image: AssetImage(SImages.facebook)),
          ),
        )
      ],
    );
  }
}
