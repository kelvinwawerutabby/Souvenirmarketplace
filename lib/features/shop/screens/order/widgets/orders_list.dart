import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: SSizes.spaceBtwItems,),
      itemBuilder: (_, index) => SRoundedContainer(
        padding: const EdgeInsets.all(SSizes.md),
        showBorder: true,
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          children: [
            /// -- Row 1
            Row(
              children: [
                /// 1 - Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: SSizes.spaceBtwItems / 2),

                /// 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: SColors.primaryColor, fontWeightDelta: 1),
                      ),
                      Text('07 Feb 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                /// 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_34, size: SSizes.iconSm),),

                const SizedBox(height:SSizes.spaceBtwItems)

              ],
            ),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.ship),
                      const SizedBox(width: SSizes.spaceBtwItems / 2),

                      /// 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: SColors.primaryColor, fontWeightDelta: 1),
                            ),
                            Text('#254f53', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                /// 1 - Icon
                const Icon(Iconsax.calendar),
                const SizedBox(width: SSizes.spaceBtwItems / 2),

                /// 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping Date',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: SColors.primaryColor, fontWeightDelta: 1),
                      ),
                      Text('07 Feb 2024', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
