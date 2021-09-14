import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitch/src/pages/home/widgets/top_info.dart';
import 'package:twitch/src/utils/colors.dart';

import '../../widget/background_decoration.dart';
import '../../widget/container_path.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({Key key}) : super(key: key);

  @override
  _ExploreViewState createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            const Background(),
            const TopInfo(),
            Positioned(
              top: 130,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff6630DE),
                                ),
                              ),
                              const Text(
                                "Explorar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const Text(
                            "Top Games",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        alignment: Alignment.bottomCenter,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: topgames.length,
                          itemBuilder: (_, index) => Stack(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomCenter,
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
                                child: ContainerClip(
                                  positon: CPositon.TOP,
                                  width: 180,
                                  height: 250,
                                  mirror: (index % 2) == 1,
                                  colorBorder: Colors.white.withOpacity(0.25),
                                  widget: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(
                                        (index % 2) == 1 ? pi : 0),
                                    child: ClipPath(
                                      clipper: RoundedDiagonalPathClipper(),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10),
                                        child: Container(
                                          width: 180,
                                          height: 280,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(25),
                                            ),
                                            color:
                                                Colors.white.withOpacity(0.08),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Image.asset(
                                  "assets/images/${topgames[index].image}",
                                  width: 250,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      topgames[index].name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      topgames[index].players,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // TABS
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const Text(
                                "Categorias",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                width: 70,
                                height: 3,
                                decoration: const BoxDecoration(
                                  color: Color(0xff6630DE),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0xA68E63EB),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Canales en vivo",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                      const Text(
                        "Todas las categorias",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: List<Widget>.generate(
                          images.length,
                          (index) => Container(
                            height: 120,
                            alignment: Alignment.bottomCenter,
                            margin: const EdgeInsets.only(bottom: 5),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  bottom: 0,
                                  left: 5,
                                  right: 0,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 10, right: 20),
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const Text(
                                          "Fall Guys: Ultimate Knockout",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Text(
                                          "500k espectadores - 4k siguiendo",
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            color: MColors.primary.withOpacity(0.3), width: 8)),
                                    child: Image.asset(
                                      "assets/images/${images[index]}",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

final List<TopGames> topgames = <TopGames>[
  TopGames(
    name: "Free Fayer",
    image: "free_fayer.png",
    players: "18.8k",
  ),
  TopGames(
    name: "Clash Royale",
    image: "cr.png",
    players: "28.6k",
  ),
  TopGames(
    name: "League of leguends",
    image: "lol.png",
    players: "28.6k",
  ),
];

final List<String> images = <String>[
  "maincra.png",
  "cod.png",
  "fail.png",
  "pc.png",
];

class TopGames {
  TopGames({this.name, this.image, this.players});

  String name;
  String image;
  String players;
}
