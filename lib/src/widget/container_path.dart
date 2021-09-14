import 'dart:math';

import 'package:flutter/material.dart';

const Widget textExample = Text("data");

class ContainerClip extends StatelessWidget {
  const ContainerClip({
    Key key,
    this.width,
    this.height,
    this.positon,
    this.mirror = false,
    this.widget = textExample,
    this.colorContainer = Colors.transparent,
    this.colorBorder = Colors.white,
  }) : super(key: key);

  final double width;
  final double height;
  final CPositon positon;
  final bool mirror;
  final Widget widget;
  final Color colorContainer;
  final Color colorBorder;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(mirror ? pi : 0),
              child: RotatedBox(
                quarterTurns: positon.index,
                child: ClipPath(
                  clipper: RoundedDiagonalPathClipper(),
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: colorContainer,
                      border: Border.all(
                        color: colorBorder,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            widget,
          ],
        ),
      );
}

/*
Transform(
  alignment: Alignment.center,
  transform: Matrix4.rotationY(math.pi),
  child: Icon(Icons.rotate_left, size: 100,),
)
 */
enum CPositon { TOP, RIGTH, BOTTOM, LEFT }

/// Diagonal clipper with rounded borders
class RoundedDiagonalPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..quadraticBezierTo(size.width, 0, size.width - 20, -5)
      ..lineTo(40, 70)
      ..quadraticBezierTo(10, 80, 0, 120)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
