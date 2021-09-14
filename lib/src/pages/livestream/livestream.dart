import 'package:flutter/material.dart';
import 'package:twitch/src/pages/home/widgets/card_image.dart';
import 'package:twitch/src/pages/home/widgets/categorys_card.dart';
import 'package:twitch/src/pages/home/widgets/games.dart';
import 'package:twitch/src/pages/home/widgets/segment.dart';
import 'package:twitch/src/pages/home/widgets/top_info.dart';

class LiveStream extends StatelessWidget {
  const LiveStream({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          const TopInfo(),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    SegmentTitle(
                      page: 0,
                      onTap: (v) {},
                    ),
                    const SizedBox(height: 20),
                    const CategoryCard(),
                    const SizedBox(height: 20),
                    const Text(
                      "Canales en vivo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CardImage(),
                    const Text(
                      "Juegos recomendados",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Games(),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
