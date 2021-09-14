import 'dart:ui';

import 'package:flutter/material.dart';
import '../utils/colors.dart';

class GContainer extends StatelessWidget {
  const GContainer({
    Key key,
    this.width = 250,
    this.height = 50,
    this.radius = 10,
    this.opacity = 0.01,
    this.glashColor = Colors.white,
    this.linearGradient,
    this.color,
    this.onPress,
    this.onLongPress,
    this.child = const SizedBox(),
  }) : super(key: key);

  final double width;
  final double height;
  final double radius;
  final double opacity;
  final Color glashColor;
  final LinearGradient linearGradient;
  final Color color;
  final Function onPress;
  final Function onLongPress;
  final Widget child;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onPress,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        splashColor: color,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(radius),
                ),
                color: color,
                gradient: linearGradient != null
                    ? linearGradient ??
                        LinearGradient(
                          colors: MColors.gradient,
                        )
                    : null,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(radius),
                    ),
                    color: glashColor.withOpacity(opacity),
                  ),
                  child: child,
                ),
              ),
            ),
          ],
        ),
      );
}
