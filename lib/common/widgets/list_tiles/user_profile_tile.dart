import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/s_circular_image.dart';
class SUserProfileTile extends StatelessWidget {
  const SUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SCircularImage(
        image: SImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),

      title: Text('Coding with S', style: Theme.of(context).textTheme.headlineSmall!.apply(color: SColors.white)),
      subtitle: Text('suppport@sovenirtech.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: SColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: SColors.white,)),
    );
  }
}