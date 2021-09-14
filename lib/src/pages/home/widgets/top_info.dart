import 'package:flutter/material.dart';
import '../../../widget/container_glass.dart';

class TopInfo extends StatelessWidget {
  const TopInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      top: -50,
      child: GContainer(
        height: 180,
        width: size.width,
        opacity: 0.07,
        radius: 50,
        child: Container(
          margin: const EdgeInsets.only(top: 80),
          padding: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
            bottom: 10,
          ),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset("assets/images/profile.png"),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "M4st3rmiau",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "ONLINE",
                            style: TextStyle(
                              color: Colors.green[400],
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset("assets/images/chat.png"),
                      const SizedBox(width: 20),
                      GContainer(
                        height: 35,
                        width: 70,
                        opacity: 0.05,
                        radius: 50,
                        child: Row(
                          children: <Widget>[
                            const SizedBox(width: 10),
                            Image.asset("assets/images/coins.png"),
                            const SizedBox(width: 10),
                            const Text(
                              "200",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
