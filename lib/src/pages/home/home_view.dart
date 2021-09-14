import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitch/src/pages/explore/explore_view.dart';
import 'package:twitch/src/pages/livestream/livestream.dart';

import '../../widget/background_decoration.dart';
import '../../widget/custom_bottombar.dart';
import '../../widget/diamont_btn.dart';
import 'widgets/card_image.dart';
import 'widgets/categorys_card.dart';
import 'widgets/games.dart';
import 'widgets/segment.dart';
import 'widgets/top_info.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int page = 0;
  int category = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Background(
            showBottomDecoration: false,
          ),
          if (page == 0) const LiveStream(),
          if (page == 1) const ExploreView(),
          Positioned(
            bottom: 80,
            left: size.width / 2.45,
            child: ClipPath(
              clipper: HexagonalClipper(),
              child: Container(
                height: 60,
                width: 75,
                padding: const EdgeInsets.only(bottom: 10),
                color: const Color(0xff6630DE),
                child: Image.asset(
                  "assets/images/streaming.png",
                  color: Colors.white,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            child: CustomBottomBar(
              page: page,
              onSelect: (v) {
                setState(() {
                  page = v;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
