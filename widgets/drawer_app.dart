import 'package:flutter/material.dart';
import 'package:my_travel/screens/screen_fav.dart';
import 'package:my_travel/screens/screen_tabs.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  Widget buildListTile(cardIcon, textList, onTapLink) {
    return ListTile(
      leading: Icon(
        cardIcon,
        color: Colors.green,
        size: 22,
      ),
      title: Text(
        textList,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green[600],
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Text(
              'Your Map',
              style: TextStyle(
                fontFamily: 'Lalezar',
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            Icons.card_travel,
            'Travels',
            () {
              Navigator.of(context).pushReplacement(
                // pushReplacement katsa3d bax t7yd page lifatet mzyana ila mkntch back Icon
                MaterialPageRoute(
                  builder: (c) => ScreenTabs(),
                ),
              );
            },
          ),
          buildListTile(
            Icons.favorite_border,
            'Favourites',
            () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (c) =>
                      ScreenFav(), // Pass the tripId argument to ScreenDetail
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
