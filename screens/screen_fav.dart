import 'package:flutter/material.dart';
import 'package:my_travel/widgets/drawer_app.dart';

class ScreenFav extends StatelessWidget {
  const ScreenFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Favorites',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lalezar',
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: DrawerApp(),
      body: Center(
        child: Text('Favorites"s page'),
      ),
    );
  }
}
