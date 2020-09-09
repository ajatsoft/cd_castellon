import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:intl/intl.dart';

class PartidoEstadisticas extends StatelessWidget {
  final Event partido;

  PartidoEstadisticas(this.partido);

  final ResultadosController c = Get.put(ResultadosController());

  @override
  Widget build(BuildContext context) {
    var dateFormat = new DateFormat('dd-MM-yyyy HH:mm:ss');
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(dateFormat.format(partido.date)),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Estadio: '),
                    Text(partido.location),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Asistencia: '),
                    Text((c.attendance == null)
                        ? 'no ddisponible'
                        : c.attendance.toString()),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Partidos anteirores:"),
                    Text(partido.competitors[0].form.toString()),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Partidos anteirores: "),
                    Text(partido.competitors[1].form.toString()),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
