import 'package:eccomerceapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:eccomerceapp/common/widgets/icons/s_circular_icon.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class SChoiceChip extends StatelessWidget {
  const SChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SHelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? SColors.white : null),
        avatar: SHelperFunctions.getColor(text) != null
          ? SCircularContainer(width: 50, height: 50, backgroundColor: SHelperFunctions.getColor(text)!)
        : null,
        shape: SHelperFunctions.getColor(text) != null ?  const CircleBorder() : null,
        labelPadding: isColor ?  const EdgeInsets.all(0): null,
        padding: SHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) :null,
        backgroundColor: SHelperFunctions.getColor(text) != null ? SHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
