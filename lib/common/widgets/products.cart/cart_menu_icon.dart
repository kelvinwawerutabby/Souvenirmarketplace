import 'package:eccomerceapp/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({
    super.key, required this.onPressed, required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to (() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: SColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child:  Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.white, fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}