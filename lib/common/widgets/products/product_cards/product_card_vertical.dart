import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/images/s_rounded_image.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../style/shadows.dart';
import '../../custom_shapes/containers/circular_container.dart';
import '../../icons/s_circular_icon.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 100,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [SShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(SSizes.productImageRadius),
        color:  dark ? SColors.darkerGrey : SColors.white
      ),
      child:  Column(
        children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          SRoundedContainer(
            height: 180,
            padding:const EdgeInsets.all(SSizes.sm) ,
            backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                /// --
                const SRoundedImage(imageUrl: SImages.deliveredEmailIllustration, applyImageRadius: true),
                /// -- Sale Tag
                Positioned(
                  top:12 ,
                  child: SRoundedContainer(
                    radius:SSizes.sm ,
                    backgroundColor: SColors.secondary.withOpacity(0.8),
                    padding:  const EdgeInsets.symmetric(horizontal: SSizes.sm, vertical: SSizes.xs),
                    child: Text('25', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.black),),
                  ),
                ),

                /// -- Favourite Icon Button
                SCircularIcon()
              ],
            ),
          ),


          ///  -- Details
        ],
      ),
    );
  }
}


