import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SCouponCode extends StatelessWidget {
  const SCouponCode({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? SColors.dark : SColors.white,
      padding: const EdgeInsets.only(
          top: SSizes.sm,
          bottom: SSizes.sm,
          right: SSizes.sm,
          left: SSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Apply'),
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark? SColors.white.withOpacity(0.5 ): SColors.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1))
              ),
            ),
          ),
        ],
      ),
    );
  }
}