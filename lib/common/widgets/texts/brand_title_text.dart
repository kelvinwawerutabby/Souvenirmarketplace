import 'package:eccomerceapp/utils/constants/enums.dart';
import 'package:flutter/material.dart';


class SBrandTitleText extends StatelessWidget {
  const SBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign,
    required this.brandTextSize, this.color,
  });

  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title,
            overflow: TextOverflow.ellipsis,
            maxLines: maxLines,
            style: brandTextSize == TextSizes.medium ?Theme.of(context).textTheme.labelMedium!.apply(color: color): brandTextSize == TextSizes.medium
                    ? Theme.of(context).textTheme.bodyLarge!.apply(color: color): brandTextSize == TextSizes.large
                    ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                    :Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    ),

      ],
    );
  }
}
