import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/colors.dart';
import '../../widget/background.dart';
import '../../widget/container_path.dart';
import '../home/home_view.dart';
import 'widget/page1.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key key}) : super(key: key);

  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with TickerProviderStateMixin {
  final PageController controller = PageController();
  AnimationController animationController;
  int currentPage = 0;
  Animation<double> scaleAnimation;
  double marginTop;

  Future<void> changePosition(Timer t) async {
    setState(() {
      // marginTop = marginTop == 0 ? 15 : 0;
    });
  }

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 250), vsync: this);
    scaleAnimation = Tween(begin: 0.6, end: 1.0).animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final List<ItemPage> items = <ItemPage>[
    ItemPage(
      page: const Page1(),
      title: "Disfruta de los mejores juegos en streaming",
      content:
          """No te pierdas de ninguno de los juegos más populares con tus streamers favoritos.""",
    ),
    ItemPage(
      page: const Page1(),
      title: "Disfruta de los mejores juegos en streaming",
      content:
          """No te pierdas de ninguno de los juegos más populares con tus streamers favoritos.""",
    ),
    ItemPage(
      page: const Page1(),
      title: "Disfruta de los mejores juegos en streaming",
      content:
          """No te pierdas de ninguno de los juegos más populares con tus streamers favoritos.""",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackgroundGradient(),
          Image.asset(
            "assets/images/backgroundimage.png",
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          PageView.builder(
            itemCount: items.length,
            controller: controller,
            onPageChanged: (v) {
              setState(() {
                currentPage = v;
              });
            },
            itemBuilder: (_, index) => Container(
              width: size.width,
              height: 550,
              alignment: Alignment.topCenter,
              child: AnimatedBuilder(
                animation: controller,
                builder: (_, child) {
                  double delta;
                  double y = 1;
                  if (controller.position.haveDimensions) {
                    delta = controller.page - index;
                    y = 1 - delta.abs().clamp(0.0, 1.0);
                  }
                  return Container(
                    width: size.width,
                    height: 600,
                    child: Transform(
                      transform:
                          Matrix4.translationValues(0, -55.0 * (1 - y), 0),
                      child: items[index].page,
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            height: 300,
            child: ContainerClip(
              positon: CPositon.BOTTOM,
              colorBorder: Colors.white.withOpacity(0.25),
              colorContainer: Colors.white.withOpacity(0.25),
              widget: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                          activeDotColor: Colors.white,
                          dotHeight: 8,
                          dotWidth: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        items[currentPage].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        items[currentPage].content,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 50,
            bottom: 50,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: MColors.primary,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (_) => const HomeView(),
                    ),
                  );
                },
                child: const Center(
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemPage {
  ItemPage({this.page, this.title, this.content});
  Widget page;
  String title;
  String content;
}
