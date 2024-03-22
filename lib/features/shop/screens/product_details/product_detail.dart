import 'package:eccomerceapp/common/widgets/appbar/appbar.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/curved_edges_widget.dart';
import 'package:eccomerceapp/common/widgets/icons/s_circular_icon.dart';
import 'package:eccomerceapp/common/widgets/images/s_rounded_image.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:eccomerceapp/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:eccomerceapp/utils/constants/colors.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/constants/sizes.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return  const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// 1- Product Image Slider
          SProductImageSlider(),

          /// 2- Product Details
          Padding(
              padding: EdgeInsets.only(
                  right: SSizes.defaultSpace,
                  left: SSizes.defaultSpace,
                  bottom: SSizes.defaultSpace),
          child: Column(
            children: [
              /// - Rating & Share Button
              SRatingAndShare(),
              /// - Price, Title, Stock, & Brand
              SProductMetaData()
              /// -- Attributes
              /// -- Checkout Button
              /// - Description
              /// - Reviews
            ],
          ),
          )
        ],
      ),
    ));
  }
}


