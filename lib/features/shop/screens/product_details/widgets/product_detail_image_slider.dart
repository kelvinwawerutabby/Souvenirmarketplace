import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/containers/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/s_circular_icon.dart';
import '../../../../../common/widgets/images/s_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SCurvedEdgeWidget(
      child: Container(
        color: dark ? SColors.darkerGrey : SColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(SSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(SImages.product_3))),
                )),

            /// I mage slider
            Positioned(
              right: 0,
              bottom: 30,
              left: SSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    separatorBuilder: (_, __) =>
                    const SizedBox(width: SSizes.spaceBtwItems),
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => SRoundedImage(
                        width: 80,
                        backgroundColor:
                        dark ? SColors.dark : SColors.white,
                        border: Border.all(color: SColors.primaryColor),
                        padding: const EdgeInsets.all(SSizes.sm),
                        imageUrl: SImages.product_2)),
              ),
            ),

            /// Appbar Icons
            const SAppBar(
              showBackArrow: true,
              actions: [
                SCircularIcon(icon: Iconsax.heart5, color:Colors.red )
              ],
            )


          ],
        ),
      ),
    );
  }
}