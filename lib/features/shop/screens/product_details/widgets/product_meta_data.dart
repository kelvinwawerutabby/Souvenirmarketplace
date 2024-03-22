import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/texts/product_price_text.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/constants/sizes.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale tag
            SRoundedContainer(
              radius: SSizes.sm,
              backgroundColor: SColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: SSizes.sm, vertical: SSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color:SColors.black),),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),
            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: SSizes.spaceBtwItems),
            const SProductPriceText(price:'175')
          ],
        )

        /// Title
        /// Stock status
        /// Brand
      ],
    );
  }
}
