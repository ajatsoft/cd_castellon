import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemStat extends StatelessWidget {
  String statName;
  String statValue;

  ItemStat({this.statValue, this.statName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        child: Container(
          color: Get.isDarkMode ? Colors.white12 : Colors.black12,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              statValue,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Get.isDarkMode ? Colors.white54 : Colors.black54,
          title: AutoSizeText(
            statName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            wrapWords: false,
            minFontSize: 8,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
