import 'dart:ui';

import 'package:flutter/material.dart';

class mainCurveWhite extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 375;
    final double _yScaling = size.height / 490;
    path.lineTo(0 * _xScaling, 488 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      488 * _yScaling,
      0 * _xScaling,
      199 * _yScaling,
      0 * _xScaling,
      199 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      143.772 * _yScaling,
      44.771 * _xScaling,
      99 * _yScaling,
      100 * _xScaling,
      99 * _yScaling,
    );
    path.cubicTo(
      100 * _xScaling,
      99 * _yScaling,
      291.095 * _xScaling,
      99 * _yScaling,
      291.095 * _xScaling,
      99 * _yScaling,
    );
    path.cubicTo(
      338.776 * _xScaling,
      91.242 * _yScaling,
      375 * _xScaling,
      49.42 * _yScaling,
      375 * _xScaling,
      0.293 * _yScaling,
    );
    path.cubicTo(
      375 * _xScaling,
      0.293 * _yScaling,
      375 * _xScaling,
      488 * _yScaling,
      375 * _xScaling,
      488 * _yScaling,
    );
    path.cubicTo(
      375 * _xScaling,
      488 * _yScaling,
      0 * _xScaling,
      488 * _yScaling,
      0 * _xScaling,
      488 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      488 * _yScaling,
      0 * _xScaling,
      488 * _yScaling,
      0 * _xScaling,
      488 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
