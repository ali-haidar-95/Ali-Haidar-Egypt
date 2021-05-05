import 'package:flutter/material.dart';
import 'package:abutalib_clinic/src/screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF3750A2),
        fontFamily: 'Arabic',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).primaryColor,
            height: 1.3,
          ),
        ),
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomeScreen(),
      },
    );
  }
}
