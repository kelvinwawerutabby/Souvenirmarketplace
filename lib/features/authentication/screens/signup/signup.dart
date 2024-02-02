import 'package:eccomerceapp/common/widgets/login_signup/form_divider.dart';
import 'package:eccomerceapp/common/widgets/login_signup/social_buttons.dart';
import 'package:eccomerceapp/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(SText.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: SSizes.spaceBtwSections),
              //Form
              SSignupForm(dark: dark),

              const SizedBox(height: SSizes.defaultSpace),

              ///Divider
              ///
              SFormDivider(dividerText: SText.orSignUpWith.capitalize!),
              const SizedBox(height: SSizes.defaultSpace),

              ///Social Buttons
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class SSignupForm extends StatelessWidget {
  const SSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: SText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: SSizes.defaultSpace),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: SText.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: SSizes.defaultSpace),
        TextFormField(
          decoration: const InputDecoration(
            labelText: SText.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: SSizes.defaultSpace),
        TextFormField(
          decoration: const InputDecoration(
            labelText: SText.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: SSizes.defaultSpace),
        TextFormField(
          decoration: const InputDecoration(
            labelText: SText.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: SSizes.defaultSpace),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: SText.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: SSizes.defaultSpace),
        Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(width: SSizes.defaultSpace),
            Flexible(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${SText.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: SText.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? SColors.white : SColors.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? SColors.white : SColors.primaryColor,
                        )),
                TextSpan(
                    text: '${SText.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: SText.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? SColors.white : SColors.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? SColors.white : SColors.primaryColor,
                        )),
              ])),
            ),
          ],
        ),
        const SizedBox(height: SSizes.defaultSpace),

        ///Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(SText.createAccount)),
        ),
      ],
    ));
  }
}
