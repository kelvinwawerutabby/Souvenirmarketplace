import 'package:flutter/material.dart';

class SCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);

    // First quadratic Bezier curve
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // Second quadratic Bezier curve
    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    // Third quadratic Bezier curve (adjusted)
    final thirdFirstCurve = Offset(size.width , size.height - 20);
    final thirdControlPoint1 = Offset(size.width, size.height ); // Adjusted control point
    path.quadraticBezierTo(
        thirdFirstCurve.dx, thirdFirstCurve.dy, thirdControlPoint1.dx, thirdControlPoint1.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
