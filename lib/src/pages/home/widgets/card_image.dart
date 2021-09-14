import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardImage extends StatelessWidget {
  CardImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      height: 340,
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 0.9,
          initialPage: 1,
          viewportFraction: 0.85,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ));

  final List<Widget> imageSliders = streamers
      .map(
        (item) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                child: Stack(
                  children: <Widget>[
                    Image.asset("assets/images/${item.image}",
                        fit: BoxFit.cover, width: double.infinity, height: 250),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffE33FB1),
                        ),
                        child: const Text(
                          "En vivo",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        width: 90,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff6630DE),
                        ),
                        child: Text(
                          "${item.viewers} Views",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: item.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  const TextSpan(
                    text: " Esta transmitiendo ",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  TextSpan(
                    text: item.game,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: List<Widget>.generate(
                item.tags.length,
                (index) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      item.tags[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
      .toList();
}

class Streamer {
  Streamer({this.name, this.game, this.viewers, this.image, this.tags});

  String name;
  String game;
  String viewers;
  String image;
  List<String> tags;
}

List<Streamer> streamers = <Streamer>[
  Streamer(
    name: "Biyin",
    game: "Minecraft",
    viewers: "150k",
    image: "biyin.jpeg",
    tags: <String>["Acción", "Plataforma"],
  ),
  Streamer(
    name: "Auronpay",
    game: "Amoung us",
    viewers: "130k",
    image: "auron.png",
    tags: <String>["Plataforma", "Deportes"],
  ),
  Streamer(
    name: "Rubius",
    game: "Amoung us",
    viewers: "180k",
    image: "rubius.png",
    tags: <String>["Acción", "Plataforma", "Deportes"],
  ),
  Streamer(
    name: "Ibai",
    game: "Minecraft",
    viewers: "150k",
    image: "ibai.jpeg",
    tags: <String>["Acción", "Deportes"],
  ),
];
