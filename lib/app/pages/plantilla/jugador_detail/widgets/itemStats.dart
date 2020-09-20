import 'package:flutter/material.dart';

class ItemStat extends StatelessWidget {
  String statName;
  String statValue;

  ItemStat({this.statValue, this.statName});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              statValue,
              style: TextStyle(color: Colors.yellow, fontSize: 16),
            ),
            Padding(
                padding: EdgeInsets.only(top: 6, bottom: 8),
                child: Text(statName,
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.white24,
                        fontSize: 12))),
          ],
        ));
  }
}
