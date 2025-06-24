import 'package:flutter/material.dart';
import 'package:my_travel/data/data_cat.dart';

class ScreenDetail extends StatelessWidget {
  final String id; // Declare the variable to hold the ID passed
  ScreenDetail({Key? key, required this.id});

  @override
  Widget build(BuildContext context) {
    final sTrip = Trips_data.firstWhere((trip) => trip.id == id);

    Widget titleF(String titleText) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        alignment: Alignment.topRight,
        child: Text(
          titleText,
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    Widget activF(Widget childList) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 200,
        child: childList,
      );
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            sTrip.title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lalezar',
            ),
          )),
      body: Directionality(
        textDirection: TextDirection.rtl, // Set text direction to RTL
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  sTrip.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              titleF('الأنشطة'),
              activF(
                ListView.builder(
                  itemCount: sTrip.activities.length,
                  itemBuilder: (context, index) => Card(
                    elevation: 0.3,
                    child: Text(
                      sTrip.activities[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              titleF('البرنامج اليومي'),
              activF(
                ListView.builder(
                  itemCount: sTrip.program.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text('يوم ${index + 1}'),
                    ),
                    title: Text(
                      sTrip.program[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
