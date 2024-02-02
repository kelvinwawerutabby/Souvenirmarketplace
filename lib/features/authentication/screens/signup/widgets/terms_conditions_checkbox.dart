import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: SSizes.defaultSpace),
        Flexible(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: '${SText.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: SText.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark? SColors.white: SColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: dark ? SColors.white: SColors.primaryColor,
            )),
            TextSpan(
                text: '${SText.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: SText.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark? SColors.white: SColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: dark ? SColors.white: SColors.primaryColor,
            )),
          ])
          ),
        ),
      ],
    );
  }
}