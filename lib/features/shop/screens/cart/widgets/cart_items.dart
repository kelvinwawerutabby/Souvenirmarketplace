import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';

class SCartItems extends StatelessWidget {
  const SCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
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
}
