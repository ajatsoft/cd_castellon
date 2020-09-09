import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/plantilla_controller.dart';
import 'package:cd_castellon/app/data/model/cuerpo_tecnico.dart';

class CuerpoTecTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantillaController>(
        init: PlantillaController(),
        builder: (_) {
          if (_.loading2) {
            return Center(
              child: LinearProgressIndicator(),
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
