import 'package:flutter/material.dart';

import '../pages/explore/explore_view.dart';
import 'container_glass.dart';

Color selected = Colors.white;
Color unSelected = Colors.white54;

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key key, this.page, this.onSelect}) : super(key: key);
  final int page;
  final Function onSelect;
    
  @override
  Widget build(BuildContext context) => ClipPath(
        clipper: RPSCustomPainter(),
        child: GContainer(
          height: 110,
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: const EdgeInsets.only(bottom: 45),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        onSelect(0);
                      },
                      child: Image.asset(
                        "assets/images/home.png",
                        color: page == 0 ? selected : unSelected,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Image.asset("assets/images/search.png")
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        onSelect(1);
                      },
                      child: Image.asset(
                        "assets/images/explore.png",
                        color: page == 1 ? selected : unSelected,
                      ),
                    ),
                    const SizedBox(width: 35),
                    Image.asset("assets/images/bell.png"),
                    const SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.9396135, size.height * 1.187633);
    path_0.lineTo(size.width * 0.06038647, size.height * 1.187633);
    path_0.arcToPoint(Offset(size.width * 0.03688164, size.height * 1.174533),
        radius:
            Radius.elliptical(size.width * 0.06000483, size.height * 0.1656133),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.01768599, size.height * 1.138813),
        radius:
            Radius.elliptical(size.width * 0.06018116, size.height * 0.1661000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.004743961, size.height * 1.085833),
        radius:
            Radius.elliptical(size.width * 0.06018357, size.height * 0.1661067),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 1.072679e-18, size.height * 1.020967),
        radius:
            Radius.elliptical(size.width * 0.06000966, size.height * 0.1656267),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 1.072679e-18, size.height * 0.1666600);
    path_0.arcToPoint(Offset(size.width * 0.004746377, size.height * 0.1017867),
        radius:
            Radius.elliptical(size.width * 0.06000725, size.height * 0.1656200),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.01768841, size.height * 0.04881333),
        radius:
            Radius.elliptical(size.width * 0.06017391, size.height * 0.1660800),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.03688406, size.height * 0.01309333),
        radius:
            Radius.elliptical(size.width * 0.06018357, size.height * 0.1661067),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(
        Offset(size.width * 0.06038647, size.height * 1.628327e-16),
        radius:
            Radius.elliptical(size.width * 0.06001449, size.height * 0.1656400),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3937971, size.height * 1.628327e-16);
    path_0.cubicTo(
        size.width * 0.3989155,
        size.height * 0.01251333,
        size.width * 0.4044034,
        size.height * 0.02435333,
        size.width * 0.4066594,
        size.height * 0.02888667);
    path_0.lineTo(size.width * 0.4892150, size.height * 0.1946000);
    path_0.arcToPoint(Offset(size.width * 0.4934034, size.height * 0.1983600),
        radius: Radius.elliptical(
            size.width * 0.007079710, size.height * 0.01954000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4975845, size.height * 0.1946000),
        radius: Radius.elliptical(
            size.width * 0.007079710, size.height * 0.01954000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5801401, size.height * 0.02888667);
    path_0.cubicTo(
        size.width * 0.5824155,
        size.height * 0.02432000,
        size.width * 0.5881739,
        size.height * 0.01240667,
        size.width * 0.5936812,
        size.height * 1.776357e-16);
    path_0.lineTo(size.width * 0.9396135, size.height * 1.776357e-16);
    path_0.arcToPoint(Offset(size.width * 0.9631184, size.height * 0.01310000),
        radius:
            Radius.elliptical(size.width * 0.06001208, size.height * 0.1656333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9823140, size.height * 0.04882000),
        radius:
            Radius.elliptical(size.width * 0.06018599, size.height * 0.1661133),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9952560, size.height * 0.1017933),
        radius:
            Radius.elliptical(size.width * 0.06017874, size.height * 0.1660933),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width, size.height * 0.1666600),
        radius:
            Radius.elliptical(size.width * 0.06000242, size.height * 0.1656067),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width, size.height * 1.020967);
    path_0.arcToPoint(Offset(size.width * 0.9952536, size.height * 1.085840),
        radius:
            Radius.elliptical(size.width * 0.06000483, size.height * 0.1656133),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9823116, size.height * 1.138820),
        radius:
            Radius.elliptical(size.width * 0.06018357, size.height * 0.1661067),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9631159, size.height * 1.174540),
        radius:
            Radius.elliptical(size.width * 0.06018116, size.height * 0.1661000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9396135, size.height * 1.187633),
        radius:
            Radius.elliptical(size.width * 0.06000242, size.height * 0.1656067),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
