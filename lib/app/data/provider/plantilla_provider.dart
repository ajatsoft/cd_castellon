import 'package:cd_castellon/app/data/model/cuerpo_tecnico.dart';
import 'package:cd_castellon/app/data/model/jugadores.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart';
import 'package:html/parser.dart';

class JugadoresAPI {
  JugadoresAPI._internal();
  static JugadoresAPI _instance = JugadoresAPI._internal();
  static JugadoresAPI get instance => _instance;


  Future getJugadorDetail(url) async {
    print(
        '=========================getJugadorDetail___API__=======================================');
    dynamic response2 = await http.get(url);
    final document2 = parse(response2.body);
    print(
        '=========================getJugadorDetail___API__=======================================$response2');
    final descripcion =
        document2.getElementsByClassName('gdlr-soccer-tab-content active');
    var descrp1 = descripcion[0].getElementsByTagName('p')[0].text;
    print(
        '=========================getJugadorDetail___API__=======================================$descrp1');
    final descrp2 = descripcion[0].getElementsByTagName('p')[1].text;
    print(
        '=========================getJugadorDetail___API__=======================================$descrp2');
    final descripcion2 = document2
        .getElementsByClassName('gdlr-soccer-player-general-info-right-inner');
    final lugarN =
        descripcion2[0].getElementsByClassName('gdlr-soccer-tail')[0].text;
    final fechaN =
        descripcion2[0].getElementsByClassName('gdlr-soccer-tail')[1].text;
    final altura =
        descripcion2[0].getElementsByClassName('gdlr-soccer-tail')[2].text;
    final peso =
        descripcion2[0].getElementsByClassName('gdlr-soccer-tail')[3].text;

    Jugador feed = Jugador(
      lugarN: lugarN,
      fechaN: fechaN,
      altura: altura,
      peso: peso,
      descripcion1: descrp1,
      descripcion2: descrp2,
    );
    return feed;
  }

  Future getJugadorDetail2(url) async {
//    print('=========================getJugadorDetail___API__=======================================${trayectorias.length}');
    List<String> trayectori = [];
    dynamic response2 = await http.get(url);
    final document2 = parse(response2.body);
//    print('=========================getJugadorDetail___API__=======================================$response2');
    final descripcion =
        document2.getElementsByClassName('gdlr-soccer-tab-content active');
    final trayectoria = descripcion[0].getElementsByTagName('ul');
    if (trayectoria.length > 0) {
      var liList = trayectoria.first.getElementsByTagName('li');
      liList.forEach((e) {
        String trayect = e.text;
        trayectori.add(trayect);
      });
    }


    return trayectori;
  }

  Future<List<Jugador>> getJugadores() async {
    List<Jugador> allJugadores = [];
    String _url = 'http://www.cdcastellon.com/jugadores/';

    dynamic response = await http.get(_url);
    final document = parse(response.body);

    final jugadoresAll = document.getElementsByClassName('player-item-holder');

    for (Element jugador in jugadoresAll) {
      final player =
          jugador.getElementsByClassName('gdlr-item gdlr-classic-player');

      for (Element m in player) {
        final aTag = m.getElementsByTagName('a')[1];
        final nombre = aTag.text;

        final aTag4 = m.getElementsByTagName('a')[0];
        final url = aTag4.attributes['href'];

        final aTag5 = m.getElementsByTagName('img')[0];
        final urlImage = aTag5.attributes['src'];
        final urlImage2 = urlImage.replaceAll('-400x300', '');

        final numero = m
            .getElementsByClassName(
                'gdlr-soccer-player-squad gdlr-title-font gdlr-skin-info')
            .last
            .text;

        final posicion = m
            .getElementsByClassName(
                'gdlr-soccer-player-position gdlr-skin-info')
            .last
            .text;

        final noticiaActualidad = Jugador(
            nombre: nombre,
            posicion: posicion,
            url: url,
            imageurl: urlImage2,
            numero: numero);

        allJugadores.add(noticiaActualidad);
      }
    }
    return allJugadores;
  }

  Future<List<CuerpoTecnico>> getCT() async {
    List<CuerpoTecnico> allCuerpoTecnico = [];

    String _urlCT = 'http://www.cdcastellon.com/cuerpo-tecnico/';


    dynamic response = await http.get(_urlCT);
    final document = parse(response.body);

    final cuerpo_tecnico_All = document.getElementsByClassName('gdlr-personnel-item-wrapper');

    for (Element tecnico in cuerpo_tecnico_All) {
      final player =
      tecnico.getElementsByClassName('personnel-item');

      for (Element m in player) {
        final nombre = m.getElementsByClassName('personnel-author gdlr-skin-title')[0].text;
        final profesion = m.getElementsByClassName('personnel-position gdlr-skin-info')[0].text;

        final aTag5 = m.getElementsByTagName('img')[0];
        final urlImage = aTag5.attributes['src'];



        final trabajador = CuerpoTecnico(
            nombre: nombre,
            profesion: profesion,
            imageurl: urlImage,
            );

        allCuerpoTecnico.add(trabajador);
      }
    }
    return allCuerpoTecnico;
  }
}






//        print(nombre);
//        print(url);
//        print(urlImage);
//        print('numero $numero');
//        print('posicion $posicion');

//        final aTag2 = m.getElementsByTagName('gdlr-soccer-player-squad gdlr-title-font gdlr-skin-info')[0];
//        final numero = aTag2.attributes['div'].toString();
//        final aTag3 = m.getElementsByTagName('gdlr-soccer-player-position gdlr-skin-info"')[0];
//        final posicion = aTag3.attributes['div'].toString();
//        var cells = document.getElementsByTagName('h3')[0].getElementsByTagName('a');
//class Helper {
//
//  Client _client;
//
//
//  Helper() {
//    this._client = Client();
//  }
//
//  Future<List<Jugadores>> getAllNoticiaActualidad({ int currentPage = 1}) async {
//    List<Noticia> allNoticiasActualidad = [];
//
//    String uriActualidad = 'https://www.sup.es/portal/actualidad?page=$currentPage';
//    if (currentPage == 1) {
//      uriActualidad = 'https://www.sup.es/portal/actualidad';
//    }
//
//    dynamic response = await _client.get(uriActualidad);
//    final document = parse(response.body);
//    final noticiasActualidadAll =
//    document.getElementsByClassName('c_contenido_sin_pdf');
//
//    for (Element noticiasActualidad in noticiasActualidadAll) {
//      final noticia =
//      noticiasActualidad.getElementsByClassName('c_group c_comentarios');
//      for (Element m in noticia) {
//
//        final aTag = m.getElementsByTagName('a')[0];
//        final title = aTag.attributes['title'].toString();
//
//        final aTag2 = m.getElementsByTagName('a')[1];
//        final url = aTag2.attributes['href'];
//
//        dynamic response2 = await _client.get('https://www.sup.es$url');
//        final document2 = parse(response2.body);
//        final noticia =
//        document2.getElementsByClassName('inside')[1];
//
//
//
//        final aTag3 = noticiasActualidad.getElementsByTagName('img')[0];
//        final urlimg = aTag3.attributes['src'];
//
//        final noticiaActualidad = Noticia(
//            title: title, url: noticia.outerHtml, imageurl: urlimg);
//
//        allNoticiasActualidad.add(noticiaActualidad);
//      }
//    }
//    return allNoticiasActualidad;
//  }
//
//  Future<List<Noticia>> getAllActualidadSindical({ int currentPage = 1}) async {
//    List<Noticia> allNoticiasSindicales = [];
//
//    String uriSindicales =
//        'https://www.sup.es/portal/informacion-general/actualidad-sindical?page=$currentPage';
//    if (currentPage == 1) {
//      uriSindicales = 'https://www.sup.es/portal/informacion-general/actualidad-sindical';
//    }
//    currentPage++;
//
//    final response = await _client.get(uriSindicales);
//    final document = parse(response.body);
//    final noticiasSindicalesAll = document.getElementsByClassName('view-content');
//
//    for (Element noticiasSindicales  in noticiasSindicalesAll) {
//      final noticiaSindical =
//      noticiasSindicales.getElementsByClassName('c_contenido_sin_pdf');
//      for (Element m in noticiaSindical) {
//        final aTag = m.getElementsByTagName('a')[1];
//        final title = aTag.attributes['title'].toString();
//        final aTag2 = m.getElementsByTagName('a')[0];
//        final url = aTag2.attributes['href'];
//
//        dynamic response2 = await _client.get('https://www.sup.es$url');
//        final document2 = parse(response2.body);
//        final noticia =
//        document2.getElementsByClassName('inside')[1];
//
//
//        final aTag3 = m.getElementsByTagName('img')[0];
//        final urlimg = aTag3.attributes['src'];
//
//        final noticiaSindical = Noticia(
//            title: title, url: noticia.outerHtml, imageurl: urlimg);
//
//        allNoticiasSindicales.add(noticiaSindical);
//      }
//    }
//    return allNoticiasSindicales;
//  }
//}

////class Helper {
////  Client _client;
////  int currentPage = 1;
////
////  Helper() {
////    this._client = Client();
////  }
////
////  Future<List<Noticia>> getAllNoticiaActualidad() async {
////    print(currentPage);
////    List<Noticia> allNoticiasActualidad = [];
////
////    String uriActualidad = 'https://www.sup.es/portal/actualidad?page=$currentPage';
////    if (currentPage == 1) {
////      uriActualidad = 'https://www.sup.es/portal/actualidad';
////    }
////    currentPage++;
////
////    final response = await _client.get(uriActualidad);
////    final document = parse(response.body);
////    final noticiasActualidadAll =
////    document.getElementsByClassName('c_contenido_sin_pdf');
////
////    for (Element noticiasActualidad in noticiasActualidadAll) {
////      final noticia =
////      noticiasActualidad.getElementsByClassName('c_group c_comentarios');
////      for (Element m in noticia) {
////
////        final aTag = m.getElementsByTagName('a')[0];
////        final title = aTag.attributes['title'].toString();
////
////        final aTag2 = m.getElementsByTagName('a')[1];
////        final url = aTag2.attributes['href'];
////
////        final aTag3 = noticiasActualidad.getElementsByTagName('img')[0];
////        final urlimg = aTag3.attributes['src'];
////
////        final noticiaActualidad = Noticia(
////            title: title, url: 'https://www.sup.es$url', imageurl: urlimg);
////
////        allNoticiasActualidad.add(noticiaActualidad);
////      }
////    }
////    return allNoticiasActualidad;
////  }
////
////  Future<List<Noticia>> getAllActualidadSindical() async {
////    print(currentPage);
////    List<Noticia> allNoticiasSindicales = [];
////
////    String uriSindicales =
////        'https://www.sup.es/portal/informacion-general/actualidad-sindical?page=$currentPage';
////    if (currentPage == 1) {
////      uriSindicales = 'https://www.sup.es/portal/informacion-general/actualidad-sindical';
////    }
////    currentPage++;
////
////    final response = await _client.get(uriSindicales);
////    final document = parse(response.body);
////    final noticiasSindicalesAll = document.getElementsByClassName('view-content');
////
////    for (Element noticiasSindicales  in noticiasSindicalesAll) {
////      final noticiaSindical =
////      noticiasSindicales.getElementsByClassName('c_contenido_sin_pdf');
////      for (Element m in noticiaSindical) {
////        final aTag = m.getElementsByTagName('a')[1];
////        final title = aTag.attributes['title'].toString();
////        final aTag2 = m.getElementsByTagName('a')[0];
////        final url = aTag2.attributes['href'];
////
////        final aTag3 = m.getElementsByTagName('img')[0];
////        final urlimg = aTag3.attributes['src'];
////
////        final noticiaSindical = Noticia(
////            title: title, url: 'https://www.sup.es$url', imageurl: urlimg);
////
////        allNoticiasSindicales.add(noticiaSindical);
////      }
////    }
////    return allNoticiasSindicales;
////  }
////}
////
