import 'dart:convert';

import 'package:cd_castellon/app/data/model/modelClasificacion.dart';
import 'package:http/http.dart' as http;

const baseUrl =
    'http://site.api.espn.com/apis/v2/sports/soccer/ESP.2/standings?lang=es&tz=Europe/Madrid';

class ClasificacionProvider {
  var client = new http.Client();

  Future<Standings> getClasificacion() async {
    var response = await http.get(baseUrl);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      return Standings.fromJson(body);
    } else {
      return throw Exception('Error getting scoreboard');
    }
  }
}
