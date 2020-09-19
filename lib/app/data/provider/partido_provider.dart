import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:http/http.dart' as http;

class PartidoProvider {
  var client = new http.Client();

  Future<Temporada> getData() async {
    var response = await rootBundle.loadString("data/jornadas.json");
    return Temporada.fromJson(json.decode(response));
  }

  // Future<Jornada> getDataPartidos(jornada) async {
  //   String url =
  //       // 'http://127.0.0.1:5000/api/$jornada';
  //
  //   'https://apiservercs.herokuapp.com/api/$jornada';
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     print('===========body==========$body');
  //     return Jornada.fromJson(body);
  //   } else {
  //     return throw Exception('Error getting scoreboard');
  //   }
  // }

  Future<Jornada> getDataPartidos(jornada) async {
    String url =
        // 'http://127.0.0.1:5000/api/$jornada';
        // 'https://apiservercs.herokuapp.com/api/$jornada';
        jornada;
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      print(body);
      return Jornada.fromJson(body);
    } else {
      return throw Exception('Error getting scoreboard');
    }
  }

  Future<LivePartidoDataDetail> getPartidoDetail(id) async {
    print('provider================ $id');
    String url =
        'http://site.api.espn.com/apis/site/v2/sports/soccer/esp.2/summary?lang=es&region=us&tz=Europe/Madrid&event=$id';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      return LivePartidoDataDetail.fromJson(body);
    } else {
      return throw Exception('Error getting scoreboard');
    }
  }
}
