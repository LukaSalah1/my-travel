import 'package:flutter/material.dart';
import 'package:my_travel/screens/screen_trips.dart';

class ItemsCat extends StatelessWidget {
  const ItemsCat(this.id, this.imageUrl, this.title);

  final String id;
  final String imageUrl;
  final String title;

  void selectCat(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (c) => ScreenTrips(id, title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCat(context),
      splashColor: Colors.pink,
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black.withOpacity(0.5),
            ),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'Lalezar'),
            ),
          )
        ],
      ),
    );
  }
}
