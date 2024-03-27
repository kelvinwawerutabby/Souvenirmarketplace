import 'package:eccomerceapp/common/style/section_heading.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/texts/product_price_text.dart';
import 'package:eccomerceapp/common/widgets/texts/product_title_text.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SProductTitleText(title: 'price', smallSize: true),
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
                  ),

                  /// Stock
                  Row(
                    children: [
                      const SProductTitleText(title: 'Stock:', smallSize: true),
                      Text(
                        'In Stock',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  )
                ],
              ),

              /// Variation description
              const SProductTitleText(
                  title:
                      'This is the description of the product and it can go up to max 4 lines.',
                  smallSize: true,
                  maxLines: 4),
            ],
          ),
        ),
        const SizedBox(height: SSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                SChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          children: [
            const SSectionHeading(title: 'Sizes'),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                SChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                SChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          children: [
            const SSectionHeading(title: 'Colors'),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                SChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                SChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),

      ],
    );
  }
}


