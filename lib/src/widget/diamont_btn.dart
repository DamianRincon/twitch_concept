import 'package:flutter/material.dart';

class HexagonalClipper extends CustomClipper<Path> {

  HexagonalClipper();

  @override
  Path getClip(Size size) {
    final double oneThirdWidth = size.width / 3.0;
      final Path path = Path()
        ..lineTo(0, size.height / 2)

        ..lineTo(size.width / 2, size.height)
        ..lineTo(size.width / 2, size.height)
        
        ..lineTo(size.width, size.height / 2)

        ..lineTo(oneThirdWidth * 2.5, 0)

        ..lineTo(oneThirdWidth / 2.5, 0)

        ..lineTo(0, size.height / 2)
        
        ..close();
      return path;
    /**
     path.lineTo(size.width / 2, size.height * .8);
    path.lineTo(size.width, 0);
     */
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}