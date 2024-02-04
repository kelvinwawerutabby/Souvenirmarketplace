import 'package:eccomerceapp/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:eccomerceapp/features/shop/screens/home/widget/home_appbar.dart';
import 'package:eccomerceapp/features/shop/screens/home/widget/home_categories.dart';
import 'package:eccomerceapp/features/shop/screens/home/widget/promo_slider.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/curved_edges/search_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--header
            const SPrimaryHeaderContainer(
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
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
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
                    const SPromoSlider(banners: [
                      SImages.promoBanner1,
                      SImages.promoBanner2,
                      SImages.promoBanner3
                    ]),
                    const SizedBox(height: SSizes.spaceBtwSections),
                    SGridLayout(itemCount: 2, itemBuilder: (_, index) => const SProductCardVertical()),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}


