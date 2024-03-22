import 'package:eccomerceapp/common/style/section_heading.dart';
import 'package:eccomerceapp/common/widgets/appbar/appbar.dart';
import 'package:eccomerceapp/common/widgets/images/s_circular_image.dart';
import 'package:eccomerceapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SProfileScreen extends StatelessWidget {
  const SProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const SAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [

            /// Profile picture

            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SCircularImage(image: SImages.user, width: 80, height: 80),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                ],
              ),
            ),

            /// Details
           const SizedBox(height: SSizes.spaceBtwItems/2),
           const Divider(),
           const SizedBox(height: SSizes.spaceBtwItems),
            const SSectionHeading(title: 'Profile Information', showActionButton: false),
            const SizedBox(height: SSizes.spaceBtwItems),

            SProfileMenu( title: 'Name', value:'Coding with S', onPressed: () {}),
            SProfileMenu( title: 'UserName', value:'Coding_with_S', onPressed: () {}),

            const SizedBox(height: SSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwSections),
            /// Heading Personal Info
            const SSectionHeading(title: 'Personal Information', showActionButton: false),
            const SizedBox(height: SSizes.spaceBtwItems),

            SProfileMenu( title: 'User ID', value:'4589789',icon:Iconsax.copy, onPressed: () {}),
            SProfileMenu( title: 'E-mail', value:'Coding_with_S', onPressed: () {}),
            SProfileMenu( title: 'Phone Number', value:'+254701451665', onPressed: () {}),
            SProfileMenu( title: 'Gender', value:'Male', onPressed: () {}),
            SProfileMenu( title: 'Date of Birth', value:'22 Nov, 1990', onPressed: () {}),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwSections),
            
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Close Account', style: TextStyle(color: Colors.red)),
              ),
            )

          ],
        ),
        ),
      ),
    );
  }
}


