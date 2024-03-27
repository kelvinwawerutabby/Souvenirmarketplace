import 'package:eccomerceapp/common/widgets/appbar/appbar.dart';
import 'package:eccomerceapp/features/shop/screens/Product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:eccomerceapp/features/shop/screens/Product_reviews/widgets/rating_progress_indicator.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/products/Ratings/rating_indicator.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar:
          const SAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: SSizes.spaceBtwItems),

              /// overall Product ratings
              const SOverallProductRating(),
              const SRatingBarIndicator(rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: SSizes.spaceBtwSections),

              /// user review list

            ],
          ),
        ),
      ),
    );
  }
}


