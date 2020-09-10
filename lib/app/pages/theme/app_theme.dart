import 'package:flutter/material.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';



final ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,

    visualDensity: VisualDensity.adaptivePlatformDensity,

    primaryColor: AColors.primary,

    accentColor: AColors.accent,
    backgroundColor: AColors.light,
    buttonColor: AColors.primary,
    canvasColor: Colors.white,
    unselectedWidgetColor: Colors.grey[300],
    highlightColor: AColors.secondary,
    cardColor: AColors.secondary,
    splashColor: AColors.splash,
    dialogBackgroundColor: AColors.secondary,
    dividerColor: AColors.accent.withAlpha(0),
    dividerTheme: DividerThemeData(
      color: AColors.accent,
      indent: 100.0,
      endIndent: 100.0,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),

    appBarTheme: AppBarTheme(brightness: Brightness.light),

    fontFamily: 'Euclid');




final ThemeData appDarkThemeData = ThemeData(
    brightness: Brightness.dark,

    visualDensity: VisualDensity.adaptivePlatformDensity,

    primaryColor: AColors.primary,

    accentColor: AColors.accent,
    backgroundColor: AColors.dark,
    buttonColor: AColors.primary,
    canvasColor:  AColors.dark,
    unselectedWidgetColor: Colors.black,
    highlightColor: AColors.secondary,
    cardColor: Colors.black,
    splashColor: AColors.splash,
    dialogBackgroundColor: Colors.black,
    dividerColor: AColors.accent.withAlpha(0),
    dividerTheme: DividerThemeData(
      color: AColors.accent,
      indent: 72.0,
      endIndent: 72.0,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),


    appBarTheme: AppBarTheme(brightness: Brightness.dark),

    fontFamily: 'Euclid');






