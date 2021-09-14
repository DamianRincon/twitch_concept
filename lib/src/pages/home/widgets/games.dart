import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  Games({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: 100,
        child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/${images[index]}",
                width: 85,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );

  final List<String> images = <String>[
    "maincra.png",
    "cod.png",
    "fail.png",
    "pc.png",
  ];
}
