import 'package:flutter/material.dart';
import 'package:my_travel/data/data_cat.dart';
import 'package:my_travel/widgets/cart_cat.dart';

class ScreenTrips extends StatelessWidget {
  const ScreenTrips(
    this.catId,
    this.catTitle,
  );

  final catTitle;
  final catId;

  @override
  Widget build(BuildContext context) {
    final fTrip = Trips_data.where(
      (trip) {
        return trip.categories.contains(catId);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          catTitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lalezar',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CartCat(
              id: fTrip[index].id,
              imageUrl: fTrip[index].imageUrl,
              title: fTrip[index].title,
              season: fTrip[index].season,
              tripType: fTrip[index].tripType,
              duration: fTrip[index].duration);
        },
        itemCount: fTrip.length,
      ),
    );
  }
}
