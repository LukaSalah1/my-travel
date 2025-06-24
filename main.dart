import 'package:flutter/material.dart';
import 'package:my_travel/screens/screen_tabs.dart';

void main() {
  runApp(MyTravel());
}

class MyTravel extends StatelessWidget {
  const MyTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'travelApp',
      home: ScreenTabs(),
      theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
                headlineLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )),
    );
  }
}
