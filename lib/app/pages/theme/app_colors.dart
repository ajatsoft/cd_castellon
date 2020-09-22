// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:cd_castellon/app/config.dart';
//
// class AColors {
//
//
//   AColors._();
//
//   static Color get accent => hex('#cb3534');
//   static Color get primary =>  hex('#f3d310');
//   static Color get secondary => hex('#cb3534');
//   static Color get splash => Colors.orange;
//   static Color get dark =>  hex('#191919');
//   static Color get light =>  hex('#f4f4f8');
//   static Color get white =>  Colors.white;
//   static Color get black =>  Colors.black;
//   static Color get blue => Colors.blue;
//   static Color get orange => Colors.orange;
//   static Color get red => Colors.red;
//   static Color get purple => Colors.purpleAccent;
//   static Color get blueGrey => Colors.blueGrey;
//
//
//
//
//   ///Convertir hex en material
//   static MaterialColor hex(String hex) => AColors._factoryColor(AColors._getColorHexFromStr(hex));
//
//   static MaterialColor _factoryColor(int color) {
//     return MaterialColor(color, <int, Color>{
//       50: Color(color),
//       100: Color(color),
//       200: Color(color),
//       300: Color(color),
//       400: Color(color),
//       500: Color(color),
//       600: Color(color),
//       700: Color(color),
//       800: Color(color),
//       900: Color(color),
//     });
//   }
//   ///Obtener hex
//   static int _getColorHexFromStr(String colorStr) {
//     colorStr = "FF" + colorStr;
//     colorStr = colorStr.replaceAll("#", "");
//     int val = 0;
//     int len = colorStr.length;
//     for (int i = 0; i < len; i++) {
//       int hexDigit = colorStr.codeUnitAt(i);
//       if (hexDigit >= 48 && hexDigit <= 57) {
//         val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
//       } else if (hexDigit >= 65 && hexDigit <= 70) {
//         // A..F
//         val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
//       } else if (hexDigit >= 97 && hexDigit <= 102) {
//         // a..f
//         val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
//       } else {
//         val = 0xFFFFFFFF;
//       }
//     }
//     return val;
//   }
// }
