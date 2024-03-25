import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/images/s_circular_image.dart';
import 'package:eccomerceapp/common/widgets/texts/product_price_text.dart';
import 'package:eccomerceapp/common/widgets/texts/s_brand_title_text_with_verified_icon.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/constants/enums.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/constants/sizes.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale tag
            SRoundedContainer(
              radius: SSizes.sm,
              backgroundColor: SColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: SSizes.sm, vertical: SSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: SColors.black),
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),

            /// Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: SSizes.spaceBtwItems),
            const SProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(width: SSizes.spaceBtwItems / 1.5),

        /// Title
        const SProductPriceText(price: 'Green Nike Sports Shirt'),
        const SizedBox(width: SSizes.spaceBtwItems / 1.5),

        /// Stock status
        Row(
          children: [
            const SProductPriceText(price: 'Green Nike Sports Shirt'),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(width: SSizes.spaceBtwItems / 1.5),
          ],
        ),

        /// Brand
         Row(
          children: [
            SCircularImage(image: SImages.promoBanner1,
            width: 32,
              height: 32,
              overlayColor: darkMode ? SColors.white: SColors.black,
            ),
            const SBrandTitleWithVerification(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
