import 'package:eccomerceapp/common/widgets/appbar/appbar.dart';
import 'package:eccomerceapp/common/widgets/appbar/tabbar.dart';
import 'package:eccomerceapp/common/widgets/brands/brand_show_case.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/rounded_container.dart';
import 'package:eccomerceapp/common/widgets/custom_shapes/containers/curved_edges/search_container.dart';
import 'package:eccomerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerceapp/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:eccomerceapp/common/widgets/texts/section_heading.dart';
import 'package:eccomerceapp/features/shop/screens/store/widgets/category_tab.dart';
import 'package:eccomerceapp/utils/constants/image_strings.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/curved_edges/brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            SCartCounterIcon(
              onPressed: () {},
              iconColor: SColors.grey,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: SHelperFunctions.isDarkMode(context)
                      ? SColors.black
                      : SColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(SSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// search bar
                        const SizedBox(
                          height: SSizes.spaceBtwItems,
                        ),
                        const SSearchContainer(
                            text: 'Search in store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: SSizes.spaceBtwSections),

                        /// -- Featured Brands
                        SSectionHeading(
                            title: 'Featured Brands', onPressed: () {}),
                        const SizedBox(
                          height: SSizes.spaceBtwItems / 1.5,
                        ),
                        SGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return SBrandCard(
                              showBorder: true,
                            );
                          },
                        )
                      ],
                    ),
                  ),

                  /// Tabs
                  bottom: const STabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ])),
            ];
          },
          body: const TabBarView(
            children: [
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
