import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
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
              TextButton(onPressed: (){}, child: const Text(SText.forgetPassword)),

            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          ///Sign I Button
          SizedBox( width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(SText.signIn))),
          const SizedBox(height: SSizes.spaceBtwSections,),
          ///Create Account Button
          SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text(SText.createAccount))),
        ],
      ),
      ),
    );
  }
}