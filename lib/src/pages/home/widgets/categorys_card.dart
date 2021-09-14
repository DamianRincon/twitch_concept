import 'package:flutter/material.dart';
import '../../../widget/container_glass.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GContainer(
      height: 95,
      width: size.width,
      opacity: 0.07,
      radius: 15,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List<Widget>.generate(
                categorys.length,
                (index) => Column(
                  children: <Widget>[
                    Image.asset("assets/images/${categorys[index].image}"),
                    Text(
                      categorys[index].name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 5,
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}

class Category {
  Category({this.name, this.image});

  String name;
  String image;
}

final List<Category> categorys = <Category>[
  Category(image: "accion.png", name: "Acción"),
  Category(image: "sport.png", name: "Sport"),
  Category(image: "rpg.png", name: "RPG"),
  Category(image: "musica.png", name: "Música"),
];
