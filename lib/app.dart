import 'package:flutter/material.dart';
import 'src/pages/splash_screen/splash_screen_view.dart';

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Twitch',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            brightness: Brightness.dark,
          )
        ),
        home: const SplashScreen(),
      );
}
