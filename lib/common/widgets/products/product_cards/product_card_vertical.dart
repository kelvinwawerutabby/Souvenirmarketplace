import 'package:eccomerceapp/common/style/shadows.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/images/s_rounded_image.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/s_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: dark ?  SColors.darkerGrey : SColors.white
        ),
        child:  Column(
          children: [
            //Thumbnail, wishlist, button, discount tag
            SRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SSizes.sm),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const SRoundedImage(imageUrl: SImages.pShoes, applyImageRadius: true),
                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: SRoundedContainer(
                      radius: SSizes.sm,
                      backgroundColor: SColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: SSizes.sm, vertical: SSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.black),),
                    ),
                  ),
                  /// -- Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: SCircularIcon(icon: Iconsax.heart5, color: Colors.red,)),
                ],
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems / 2),

            //details
            Padding(padding: const EdgeInsets.only(left: SSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SProductTitleText(title: 'Blue Nike  Air shoes', smallSize: true),
                const SizedBox(height: SSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text('Nike',overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(width: SSizes.sm),
                    const Icon(Iconsax.verify5, color: SColors.primaryColor, size: SSizes.iconXs),
                  ],
                ),


              ],
            ),
            ),
            //

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: SSizes.sm),
                  child: SProductPriceText(price: '35.0', ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: SColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SSizes.cardRadiusMd),
                      bottomRight: Radius.circular(SSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: SSizes.iconLg * 1.2,
                      height: SSizes.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add,color: SColors.white))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}






