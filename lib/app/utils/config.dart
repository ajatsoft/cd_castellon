import 'package:flutter/material.dart';

/// last slash ' / ' is mandatory
const String URL = "https://www.goldeplata.es/";

const int FEATURED_CATEGORY_ID = 107;
const int FEATURED_CATEGORY_ID2 = 53;
const String FEATURED_CATEGORY_TITLE = 'CD CASTELLÓN';
const String FEATURED_CATEGORY_TITLE2 = 'LIGA SMARTBANK';

const int FEATURED_CATEGORY_ID3 = 45;
const int FEATURED_CATEGORY_ID4 = 44;
const String FEATURED_CATEGORY_TITLE3 = 'PREVIA';
const String FEATURED_CATEGORY_TITLE4 = 'CRONICA';

const String REST_URL_PREFIX = 'wp-json';

const List<dynamic> CUSTOM_CATEGORIES = [
  ["LIGA SMARTBANK", "assets/boxed/lifestyle.png", 53],
  ["PREVIA", "assets/boxed/fashion.png", 45],
  ["CRONICA", "assets/boxed/music.png", 44],
  ["Comunicado", "assets/boxed/photography.png", 70],
  ["Cantera", "assets/boxed/sport.png", 69],
  ["Afición", "assets/boxed/world.png", 68],
  ["Portada", "assets/boxed/health.png", 63],
  ["En albinegro", "assets/boxed/travel.png", 93],
  ["Uncategorized", "assets/boxed/recipies.png", 10],
];


// bool get isModoDark => ThemeController.to.modoDark.value;

class k {
  k._();
  //Services

  //UI
  static const UI_CARD_MARGIN = EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0);

}

const double defaultPadding = 8;
