import 'package:eccomerceapp/utils/device/device_utility.dart';
import 'package:eccomerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class STabBar extends StatelessWidget implements PreferredSizeWidget {
  const STabBar( {super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SColors.black : SColors.white,
      child: TabBar(
        tabs:tabs,
        isScrollable: true,
        indicatorColor: SColors.primaryColor,
        labelColor: dark ? SColors.white : SColors.primaryColor,
        unselectedLabelColor: SColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
