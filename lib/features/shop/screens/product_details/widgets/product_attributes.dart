import 'package:eccomerceapp/common/style/section_heading.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/texts/product_price_text.dart';
import 'package:eccomerceapp/common/widgets/texts/product_title_text.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        SRoundedContainer(
          padding: const EdgeInsets.all(SSizes.md),
          backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Column(
            children: [
              /// Title, Price and stock status
              Row(
                children: [
                  const SSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: SSizes.spaceBtwItems),
                  Column(
                    children: [
                      const SProductTitleText(title: 'price', smallSize: true),
                    ],
                  ),

                  Row(
                    children: [
                      /// Actual Price
                      Text(
                        '\$25',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: SSizes.spaceBtwItems),
                      /// Sale Price
                      const SProductPriceText(price: '20')
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
