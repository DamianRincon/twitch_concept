import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'container_glass.dart';
import 'rounded_container.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    this.showBottomDecoration = true,
    this.showTopDecoration = true,
  }) : super(key: key);
  final bool showBottomDecoration;
  final bool showTopDecoration;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        GContainer(
          width: size.width,
          height: size.height,
          linearGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: MColors.gradient,
          ),
          glashColor: const Color(0xff020B1A),
        ),
        if (showTopDecoration)
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: double.infinity,
            height: 370,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 10,
                  left: -75,
                  child: RContainer(
                    color: const Color(0xffFBBC04).withOpacity(0.2),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 20,
                  child: RContainer(
                    color: const Color(0xff34A853).withOpacity(0.2),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: RContainer(
                    color: const Color(0xff0083FD).withOpacity(0.2),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 70,
                  child: RContainer(
                    color: const Color(0xffF21E76).withOpacity(0.2),
                  ),
                ),
              ],
            ),
          ),
        if (showBottomDecoration)
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              height: 370,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 10,
                    left: -75,
                    child: RContainer(
                      color: const Color(0xffFBBC04).withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 20,
                    child: RContainer(
                      color: const Color(0xff34A853).withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: RContainer(
                      color: const Color(0xff0083FD).withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 70,
                    child: RContainer(
                      color: const Color(0xffF21E76).withOpacity(0.2),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
