import 'dart:ui';

import 'package:flutter/material.dart';

class RContainer extends StatelessWidget {
  const RContainer({Key key, this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
        child: Container(
          decoration: BoxDecoration(color: color.withOpacity(0.0)),
        ),
      ),
    );
  }
}
