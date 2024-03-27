import 'package:eccomerceapp/common/widgets/appbar/appbar.dart';
import 'package:eccomerceapp/common/widgets/icons/s_circular_icon.dart';
import 'package:eccomerceapp/common/widgets/images/s_rounded_image.dart';
import 'package:eccomerceapp/common/widgets/texts/product_price_text.dart';
import 'package:eccomerceapp/common/widgets/texts/product_title_text.dart';
import 'package:eccomerceapp/common/widgets/texts/s_brand_title_text_with_verified_icon.dart';
import 'package:eccomerceapp/features/shop/screens/cart/widgets/add_remove_button.dart';
import 'package:eccomerceapp/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:eccomerceapp/features/shop/screens/checkout/checkout.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SAppBar(
            showBackArrow: true,
            title:
                Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
        body: const Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: SCartItem()
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child:
              ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('CheckOut \$256')),
        ));
  }
}
