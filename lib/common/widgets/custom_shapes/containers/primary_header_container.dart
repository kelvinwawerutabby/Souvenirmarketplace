import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import 'circular_container.dart';
import 'curved_edges/curved_edges_widget.dart';
class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidget(
      child: Container(
        color: SColors.primaryColor,
        padding:  const EdgeInsets.all(0),
        child:  Stack(
          children: [
            ///Background Custom Shapes
            child,
            Positioned( top: -150, right: -250, child: SCircularContainer(backgroundColor: SColors.textWhite.withOpacity(0.1))),
            Positioned( top: 100, right: -300, child: SCircularContainer(backgroundColor: SColors.textWhite.withOpacity(0.1))),

          ],
        ),
      ),
    );
  }
}