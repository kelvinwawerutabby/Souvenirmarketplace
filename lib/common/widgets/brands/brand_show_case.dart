import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/curved_edges/brand_card.dart';
import '../custom_shapes/containers/curved_edges/rounded_container.dart';
class SBrandShowcase extends StatelessWidget {
  const SBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      showBorder: true,
      borderColor: SColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SSizes.md),
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Product Count
          const SBrandCard( showBorder: false),
          const SizedBox(height: SSizes.spaceBtwItems),
          /// Brand Top 3 product Images
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );

  }




  Widget brandTopProductImageWidget (String image, context) {
    return Expanded(
      child: SRoundedContainer(
        height: 100,
        backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkGrey : SColors.light,
        margin: const EdgeInsets.only(right: SSizes.sm),
        child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}