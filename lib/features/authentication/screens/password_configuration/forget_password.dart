import 'package:eccomerceapp/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(SText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: SSizes.defaultSpace),
            Text(SText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: SSizes.defaultSpace * 2),
            
            ///Text field
            TextFormField(
              decoration: const InputDecoration(labelText: SText.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: SSizes.defaultSpace),

            ///Submit Button
            SizedBox( width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()) , child: const Text(SText.submit)))
          ],
        ),
      ),
    );
  }
}
