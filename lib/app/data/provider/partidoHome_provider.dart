import 'dart:convert';
import 'package:cd_castellon/app/data/model/modelPartidoDetail.dart';
import 'package:cd_castellon/app/data/model/partidoHome_model.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://site.api.espn.com/apis/site/v2/sports/soccer/ESP.2/teams/4438?lang=es';

class PartidoHomeProvider {
  var client = new http.Client();


  Future<PartidoHomeModel> getPartidoHome() async {
    var response = await http.get(baseUrl);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      return PartidoHomeModel.fromJson(body);
    } else {
      return throw Exception('Error getting partidohome');
    }
  }

  Future<PartidoDataDetail> getPartidoHomeDetail(id) async {
    String url =
        'http://site.api.espn.com/apis/site/v2/sports/soccer/esp.2/summary?lang=es&event=550625';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      print('===========body==========$body');
      return PartidoDataDetail.fromJson(body);
    } else {
      return throw Exception('Error getting scoreboard');
    }
  }
}