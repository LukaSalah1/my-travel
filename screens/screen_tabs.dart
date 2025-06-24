import 'package:flutter/material.dart';
import 'package:my_travel/screens/screen_cat.dart';
import 'package:my_travel/screens/screen_filters.dart';
import 'package:my_travel/widgets/drawer_app.dart';

class ScreenTabs extends StatefulWidget {
  const ScreenTabs({super.key});

  @override
  State<ScreenTabs> createState() => _ScreenTabsState();
}

class _ScreenTabsState extends State<ScreenTabs> {
  void _selectScreen(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  int _selectIndex = 0;

  final List<Map<String, dynamic>> _screen = [
    {
      'Screen': ScreenCat(),
      'Title': 'MyTravel',
    },
    {
      'Screen': ScreenFilter(),
      'Title': 'Filters',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screen[_selectIndex]['Title'],
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Lalezar'),
        ),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: DrawerApp(),
      body: _screen[_selectIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: _selectIndex,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list),
            label: 'Filters',
          ),
        ],
      ),
    );
  }
}

/*
class ScreenTabs extends StatelessWidget {
  const ScreenTabs({super.key});

  @override
  Widget build(BuildContext context) {
    Widget textFav(iconF, textF) {
      return Tab(
          icon: Icon(
            iconF,
          ),
          text: textF);
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'MyTravel',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Lalezar'),
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[800], // Selected tab color
            tabs: [
              textFav(Icons.dashboard, 'Categories'),
              textFav(Icons.star, 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ScreenCat(),
            ScreenFav(),
          ],
        ),
      ),
    );
  }
}

*/
