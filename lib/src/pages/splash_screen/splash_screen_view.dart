import 'package:flutter/material.dart';

import '../../widget/background_decoration.dart';
import '../onboarding/onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<dynamic>(
          builder: (_) => const OnboardingView(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            const Background(),
            Center(
              child: Image.asset("assets/images/logo.png"),
            ),
          ],
        ),
      );
}
