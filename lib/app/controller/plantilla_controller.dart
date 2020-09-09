import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/cuerpo_tecnico.dart';
import 'package:cd_castellon/app/data/model/jugadores.dart';
import 'package:cd_castellon/app/data/provider/plantilla_provider.dart';
//import 'package:get_flutter/models/home_model.dart';
//import 'package:get_flutter/repository/home_repository.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PlantillaController extends GetxController {




  static PlantillaController get to => Get.find();
//  Jugador data;
  List<Jugador> _jugadores = [];
  List<Jugador> get jugadores => _jugadores;

  List<CuerpoTecnico> _personal = [];
  List<CuerpoTecnico> get personal => _personal;


  bool _loading = true;
  bool get loading => _loading;

  bool _loading2 = true;
  bool get loading2 => _loading2;


  @override
  void onInit() {
    this.loadCT();
    this.loadJugadores();
    super.onReady();
  }

  @override
  void onReady() {
    super.onReady();
  }



  Future<void> loadJugadores() async {
    final data = await JugadoresAPI.instance.getJugadores();
    this._jugadores = data;
    this._loading = false;
    update();

  }

  Future<void> loadCT() async {
    final data = await JugadoresAPI.instance.getCT();
    this._personal = data;
    this._loading2 = false;
    update();

  }



  ///TABS
  int index = 0;
  menu(int tab) {
    index = tab;
    update();
  }



}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

//  void fetchDataApi() async {
//    JugadoresAPI api = JugadoresAPI();
//
//    final response = await api.getJugadores();
//    if (response == null) {
//      Get.snackbar("Erro", "Não foi possivel conectar ao servidor.");
//    } else {
//      data = response;
//      update();
//    }
//  }