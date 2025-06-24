import 'package:flutter/material.dart';
import 'package:my_travel/models/trip.dart';
import 'package:my_travel/screens/screen_detail.dart';

class CartCat extends StatelessWidget {
  const CartCat(
      {super.key,
      required this.id,
      required this.imageUrl,
      required this.title,
      required this.season,
      required this.tripType,
      required this.duration});

  final String id;
  final String imageUrl;
  final String title;
  final Season season;
  final TripType tripType;
  final int duration;

  String get seasonText {
    switch (season) {
      case Season.Winter:
        return 'winter';
      case Season.Summer:
        return 'summer';
      case Season.Automn:
        return 'fall';
      case Season.Spring:
        return 'spring';
    }
  }

  String get tripText {
    switch (tripType) {
      case TripType.Activities:
        return 'activity';
      case TripType.Exploration:
        return 'exploration';
      case TripType.Recovery:
        return 'recovery';
      case TripType.Therapy:
        return 'therapy';
    }
  }

  void selectTrip(BuildContext context, String tripId) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => ScreenDetail(
            id: tripId), // Pass the tripId argument to ScreenDetail
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context, id),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(0),
                      ])),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$duration days',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.sunny,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        seasonText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_activity,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        tripText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
