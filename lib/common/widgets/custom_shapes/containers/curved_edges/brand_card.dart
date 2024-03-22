import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../images/s_circular_image.dart';
import '../../../texts/s_brand_title_text_with_verified_icon.dart';
class SBrandCard extends StatelessWidget {
  const SBrandCard({
    super.key, required this.showBorder, this.onTap,
  });


    final bool showBorder;
    final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SRoundedContainer(
        padding: const EdgeInsets.all(SSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Icon

            Flexible(
              child: SCircularImage(
                isNetworkImage: false,
                image: SImages.sClothes,
                backgroundColor: Colors.transparent,
                overlayColor:
                SHelperFunctions.isDarkMode(context)
                    ? SColors.white
                    : SColors.black,
              ),
            ),
            const SizedBox(
                width: SSizes.spaceBtwItems / 2),

            ///  --Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SBrandTitleWithVerification(
                      title: 'Nike',
                      brandTextSize: TextSizes.large),
                  Text('256 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}