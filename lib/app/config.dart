import 'package:flutter/material.dart';
import 'package:cd_castellon/app/controller/theme_controller.dart';

const String TITLE = "Noticias";

/// last slash ' / ' is mandatory
const String URL = "http://www.cdcastellon.com/";

const int FEATURED_CATEGORY_ID = 73;
const int FEATURED_CATEGORY_ID2 = 93;
const String FEATURED_CATEGORY_TITLE = 'Primer equipo';

const String REST_URL_PREFIX = 'wp-json';

const List<dynamic> CUSTOM_CATEGORIES = [
  ["1er Equipo", "assets/boxed/lifestyle.png", 73],
  ["Veteranos", "assets/boxed/fashion.png", 72],
  ["Club", "assets/boxed/music.png", 71],
  ["Comunicado", "assets/boxed/photography.png", 70],
  ["Cantera", "assets/boxed/sport.png", 69],
  ["Afición", "assets/boxed/world.png", 68],
  ["Portada", "assets/boxed/health.png", 63],
  ["En albinegro", "assets/boxed/travel.png", 93],
  ["Uncategorized", "assets/boxed/recipies.png", 10],
];


bool get isModoDark => ThemeController.to.modoDark.value;


class k {
  k._();
  //Services




  //UI
  static const UI_CARD_MARGIN = EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0);

}

const double defaultPadding = 8;
