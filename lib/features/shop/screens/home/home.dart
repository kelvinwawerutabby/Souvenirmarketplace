import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:eccomerceapp/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:eccomerceapp/features/shop/screens/home/widget/home_appbar.dart';
import 'package:eccomerceapp/features/shop/screens/home/widget/home_categories.dart';
import 'package:eccomerceapp/features/shop/screens/home/widget/promo_slider.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/curved_edges/search_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/images/s_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--header
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar--
                  SHomeAppBar(),
                  SizedBox(height: SSizes.spaceBtwSections),

                  /// -- Searchbar --
                  SSearchContainer(text: 'Search in store'),
                  SizedBox(height: SSizes.spaceBtwSections),

                  ///  -- Categories --
                  Padding(
                    padding: EdgeInsets.only(left: SSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// --- Heading
                        SSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: SSizes.spaceBtwItems),

                        ///categories
                        SHomeCategories()
                      ],
                    ),
                  )
                  // Add the rest of your content here
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  SPromoSlider(banners: [SImages.onBoardingImage1,SImages.onBoardingImage2,SImages.onBoardingImage3]),
                  SizedBox(height: SSizes.spaceBtwSections),
                  SProductCardVertical(),
                ],
              )

            ),
          ],
        ),
      ),
    );
  }
}








