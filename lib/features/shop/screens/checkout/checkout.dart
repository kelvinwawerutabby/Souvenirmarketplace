import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/features/authentication/screens/success_screen/success_screen.dart';
import 'package:eccomerceapp/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:eccomerceapp/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:eccomerceapp/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:eccomerceapp/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in cart

              const SCartItems(showAddRemoveButtons: false),
              const SizedBox(height: SSizes.spaceBtwSections),

              /// -- Coupon TextField
              const SCouponCode(),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),

              /// -- Billing Section
              SRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(SSizes.md),
                backgroundColor: dark ? SColors.black : SColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    SBillingAmountSection(),
                    SizedBox(height: SSizes.spaceBtwItems),

                    ///  Divider
                    Divider(),
                    SizedBox(height: SSizes.spaceBtwItems),

                    ///  Payment Methods
                    SBillingPaymentSection(),
                    SizedBox(height: SSizes.spaceBtwItems),

                    ///  Address
                    SBillingAddressSection(),
                    SizedBox(height: SSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: SImages.onBoardingImage1,
                    title: 'Payment Success!',
                    subTitle: 'Your item will be shipped soon!',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
