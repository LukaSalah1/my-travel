import 'package:flutter/material.dart';
import 'package:my_travel/data/data_cat.dart';
import 'package:my_travel/widgets/items_cat.dart';

class ScreenCat extends StatelessWidget {
  const ScreenCat({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 7 / 8,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      children: DataCat.map(
        (catD) => ItemsCat(catD.id, catD.imageUrl, catD.title),
      ).toList(),
    );
  }
}
