import 'package:flutter/material.dart';

class ScreenFilter extends StatefulWidget {
  const ScreenFilter({super.key});

  @override
  State<ScreenFilter> createState() => _ScreenFavState();
}

class _ScreenFavState extends State<ScreenFilter> {
  var _isSummer = false;

  var _isWinter = false;

  var _isFamily = false;

  Widget switchTile(String title, String subT, var currentValue, var updateV) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subT),
      value: currentValue,
      onChanged: updateV,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              children: [
                switchTile('Summer Travels', 'Just for summer', _isSummer,
                    (newValue) {
                  setState(() {
                    _isSummer = newValue;
                  });
                }),
                switchTile('Winter Travels', 'Just for winter', _isWinter,
                    (newValue) {
                  setState(() {
                    _isWinter = newValue;
                  });
                }),
                switchTile('Families Travels', 'Just for family', _isFamily,
                    (newValue) {
                  setState(() {
                    _isFamily = newValue;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
