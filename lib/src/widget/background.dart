import 'package:flutter/material.dart';
import '../utils/colors.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: MColors.gradient,
        ),
      ),
    );
  }
}
