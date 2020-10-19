import 'dart:ui';

import 'package:cd_castellon/app/data/model/cuerpo_tecnico.dart';
import 'package:cd_castellon/app/pages/plantilla/plantilla_controller.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CuerpoTecTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantillaController>(
        init: PlantillaController(),
        builder: (_) {
          if (_.loading2) {
            return Center(
              child: ColorLoader(),
            );
          }
          return GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              final CuerpoTecnico personal = _.personal[index];
              return ItemPersonal(
                personal: personal,
              );
            },
            itemCount: _.personal.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          );
        });
  }
}

class ItemPersonal extends StatelessWidget {
  final CuerpoTecnico personal;

  ItemPersonal({this.personal});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      width: 150,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              personal.imageurl,
            ),
          ),
          Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  // padding: EdgeInsets.all( 20),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.height * 0.40,
                  // decoration: new BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: Colors.grey.shade200.withOpacity(0.5)
                  // ),
                  child: new Center(
                    child: new Text(
                        'Esperando permiso \nde CD CASTELLÓN\npara usar imagen.',
                        style: Theme.of(context).textTheme.caption),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(personal.nombre,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              background: Paint()..color = Colors.black54,
                              fontFamily: 'Oswald',
                              color: Colors.white,
                              fontSize: 22)),
                    ),
                  ),
                  Container(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(personal.profesion,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              background: Paint()..color = Colors.black54,
                              fontFamily: 'Oswald',
                              color: Colors.white,
                              fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
