import 'package:eccomerceapp/common/style/section_heading.dart';
import 'package:eccomerceapp/common/widgets/appbar/appbar.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/curved_edges_widget.dart';
import 'package:eccomerceapp/common/widgets/icons/s_circular_icon.dart';
import 'package:eccomerceapp/common/widgets/images/s_rounded_image.dart';
import 'package:eccomerceapp/features/shop/screens/Product_reviews/widgets/product_reviews.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/constants/sizes.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const SBottomAddToCart(),
        body: SingleChildScrollView(
          child: Column(
            children: [

              /// 1- Product Image Slider
              const SProductImageSlider(),

              /// 2- Product Details
              Padding(
                padding: const EdgeInsets.only(
                    right: SSizes.defaultSpace,
                    left: SSizes.defaultSpace,
                    bottom: SSizes.defaultSpace),
                child: Column(
                  children: [

                    /// - Rating & Share Button
                    const SRatingAndShare(),

                    /// - Price, Title, Stock, & Brand
                    const SProductMetaData(),

                    /// -- Attributes
                    const SProductAttributes(),
                    const SizedBox(height: SSizes.spaceBtwItems),

                    /// -- Checkout Button
                    SizedBox(width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Checkout'))),
                    const SizedBox(height: SSizes.spaceBtwItems),

                    /// - Description
                    const SSectionHeading(
                      title: 'Description', showActionButton: false,),
                    const SizedBox(height: SSizes.spaceBtwItems),
                    const ReadMoreText(
                      'This is a product description for blue Nike Sleeve less ves. There are more things that can be added',
                      trimLines: 2, trimMode: TrimMode.Line, trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    /// - Reviews
                    const Divider(),
                    const SizedBox(height: SSizes.spaceBtwItems),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const SSectionHeading(title: 'Review(199)', showActionButton: false),
                       IconButton( icon: const Icon(Iconsax.arrow_right3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen() )),
                     ],
                   ),
                    const SizedBox(height: SSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}


