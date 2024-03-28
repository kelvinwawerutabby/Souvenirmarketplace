import 'package:eccomerceapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:eccomerceapp/common/widgets/icons/s_circular_icon.dart';
import 'package:eccomerceapp/features/shop/controllers/cart_controller.dart';
import 'package:eccomerceapp/utils/constants/sizes.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class SBottomAddToCart extends StatelessWidget {
  const SBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SSizes.defaultSpace, vertical: SSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? SColors.darkerGrey : SColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(SSizes.cardRadiusLg),
            topRight: Radius.circular(SSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SCircularIcon(
                  icon: Iconsax.minus,
                  backgroundColor: SColors.darkerGrey,
                  width: 40,
                  height: 40,
                  color: SColors.white),
              const SizedBox(width: SSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: SSizes.spaceBtwItems),
              const SCircularIcon(
                  icon: Iconsax.add,
                  backgroundColor: SColors.black,
                  width: 40,
                  height: 40,
                  color: SColors.white),
            ],
          ),
          GetBuilder<CartController>(
              init: CartController(),
              builder: (cxt) {
                return ElevatedButton(
                    onPressed: () {
                      var item = {
                        "id": 202428,
                        "name": "Pizza",
                        "quantity": 0,
                        "price": 20.0
                      };
                      cxt.addItem(item);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(SSizes.md),
                      backgroundColor: SColors.black,
                    ),
                    child: const Text('Add to Cart'));
              })
        ],
      ),
    );
  }
}
