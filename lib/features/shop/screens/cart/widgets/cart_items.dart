import 'package:eccomerceapp/features/shop/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';

class SCartItems extends StatelessWidget {
  const SCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<CartController>(
      init: CartController(),
      builder: (cxt) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: cxt.cart.length,
          separatorBuilder: (_, __) => const SizedBox(
            height: SSizes.spaceBtwSections,
          ),
          itemBuilder: (_, index) =>  Column(
            children: [
              /// Cart Item
              SCartItem(),
              if(showAddRemoveButtons)
              SizedBox(height: SSizes.spaceBtwItems),
        
              /// Add Remove Button Row with total Price
              if(showAddRemoveButtons)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// Extra Space
                      SizedBox(width: 70),
                    ],
                  ),
        
                  /// Add Remove button
                  SProductQuantityWithAddRemoveButton(),
                  SProductPriceText(price: '256')
                ],
              )
            ],
          ),
        );
      }
    );
  }
}
