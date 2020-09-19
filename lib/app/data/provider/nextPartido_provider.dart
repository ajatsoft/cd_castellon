import 'dart:convert';
import 'package:cd_castellon/app/data/model/livePartidoModel.dart';

// import 'package:cd_castellon/app/data/model/nextPartidoHomeModel.bak';
import 'package:cd_castellon/app/data/model/nextPartidoModel.dart';
import 'package:cd_castellon/app/data/model/partidoHome_model.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

const baseUrl = 'https://www.espn.com/soccer/team/_/id/4438&xhr=1';

class NextPartidoProvider {
  var client = new http.Client();

  Future<NextPartido> getPartidoHome() async {
    var response = await http.get(baseUrl, headers: {
      'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15'
    });
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      // print('body $body');
      // JsonEncoder encoder = new JsonEncoder.withIndent('  ');
      // String prettyprint = encoder.convert(body);
      // log('movieTitle: $prettyprint');
      //
      return NextPartido.fromJson(body);
    } else {
      return throw Exception('Error getting partidohome');
    }
  }

  //
  // Future<NextPartidoDataModel> getPartidoDetail(id) async {
  //   String url =
  //       'http://site.api.espn.com/apis/site/v2/sports/soccer/esp.2/summary?lang=es&event=578704';
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var body = json.decode(response.body);
  //     JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  //     String prettyprint = encoder.convert(body);
  //     log('movieTitle: $prettyprint');
  //
  //     print('===========body==========$id');
  //     return NextPartidoDataModel.fromJson(body);
  //   } else {
  //     return throw Exception('Error getting scoreboard');
  //   }
  //
  //
  //   // var response = await rootBundle.loadString("data/partidoLive.json");
  //   // return NextPartidoDataModel.fromJson(json.decode(response));
  //
  // }

  Future<LivePartidoDataDetail> getLivePartidoDataDetail(id) async {
    // var response = await rootBundle.loadString("data/partidoLive.json");
    // return LivePartidoDataDetail.fromJson(json.decode(response));

    String url =
        'http://site.api.espn.com/apis/site/v2/sports/soccer/esp.2/summary?lang=es&tz=Europe/Madrid&region=es&event=$id';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      // JsonEncoder encoder = new JsonEncoder.withIndent('  ');
      // String prettyprint = encoder.convert(body);
      // log('movieTitle: $prettyprint');

      return LivePartidoDataDetail.fromJson(body);
    } else {
      // print('===========url==========$url');
      //
      // print('===========body==========$id');

      return throw Exception('Error getting scoreboard');
    }
  }
}
