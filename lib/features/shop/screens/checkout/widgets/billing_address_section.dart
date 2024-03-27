import 'package:flutter/material.dart';

import '../../../../../common/style/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class SBillingAddressSection extends StatelessWidget {
  const SBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Coding with S', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('+254-701-451665', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: SSizes.spaceBtwItems/ 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('Juja, Kiambu , Kenya', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,),
          ],
        ),


      ],
    );
  }
}
