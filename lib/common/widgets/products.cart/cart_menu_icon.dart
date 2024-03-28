import 'package:eccomerceapp/features/shop/controllers/cart_controller.dart';
import 'package:eccomerceapp/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       
        Positioned(
          right: 0,
          child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: SColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: GetBuilder<CartController>(
                init: CartController(),
                builder: (value) {
                  return Center(
                    child: Text(
                      value.cart.length.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: SColors.white, fontSizeFactor: 0.8),
                    ),
                  );
                },
              )),
        ),
         IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
      ],
    );
  }
}
