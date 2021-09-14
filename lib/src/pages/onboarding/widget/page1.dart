import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width,
        height: 450,
        child: Image.asset(
          "assets/images/Kerfin7_NEA_2332.png",
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}