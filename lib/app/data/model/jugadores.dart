

import 'package:get/get.dart';

class Jugador {
   String nombre;
   String posicion;
   String url;
   String imageurl;
   String numero;
   String lugarN;
   String fechaN;
   String altura;
   String peso;
   String descripcion1;
   String descripcion2;
   List<String>  trayectoria;


  Jugador({this.nombre, this.posicion, this.url, this.imageurl, this.numero,    this.lugarN,
    this.fechaN,
    this.altura,
    this.peso,
    this.descripcion1, this.descripcion2, this.trayectoria});


}


//class RxJugador {
//  final RxString nombre;
//  final RxString posicion;
//  final RxString url;
//  final RxString imageurl;
//  final RxString numero;
//  final RxString descripcion1;
//  final RxString descripcion2;
//  final RxString trayectoria;
//
//  RxJugador(
//      {this.nombre,
//        this.posicion,
//        this.url,
//        this.imageurl,
//        this.numero,
//        this.descripcion1,
//        this.descripcion2,
//        this.trayectoria});
//}

//class Jugador {
//  RxJugador rx;
//
//  Jugador({
//    String nombre,
//    String posicion,
//    String url,
//    String imageurl,
//    String numero,
//    String descripcion1,
//    String descripcion2,
//    String trayectoria,
//  }) {
//    this.rx = RxJugador(
//      nombre: nombre.obs,
//      posicion: posicion.obs,
//      url: url.obs,
//      imageurl: imageurl.obs,
//      numero: numero.obs,
//      descripcion1: descripcion1.obs,
//      descripcion2: descripcion2.obs,
//      trayectoria: trayectoria.obs,
//    );
//  }
//
//  String get nombre => this.rx.nombre.value;
//  set nombre(String value) {
//    this.rx.nombre.value = value;
//  }
//
//  String get posicion => this.rx.posicion.value;
//  set posicion(String value) {
//    this.rx.posicion.value = value;
//  }
//
//  String get url => this.rx.url.value;
//  set url(String value) {
//    this.rx.url.value = value;
//  }
//
//  String get imageurl => this.rx.imageurl.value;
//  set imageurl(String value) {
//    this.rx.imageurl.value = value;
//  }
//
//  String get numero => this.rx.numero.value;
//  set numero(String value) {
//    this.rx.numero.value = value;
//  }
//
//  String get descripcion1 => this.rx.descripcion1.value;
//  set descripcion1(String value) {
//    this.rx.descripcion1.value = value;
//  }
//
//  String get descripcion2 => this.rx.descripcion2.value;
//  set descripcion2(String value) {
//    this.rx.descripcion2.value = value;
//  }
//
//  String get trayectoria => this.rx.trayectoria.value;
//  set trayectoria(String value) {
//    this.rx.trayectoria.value = value;
//  }
//}


