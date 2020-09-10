import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';

class EstadisticaTemporada extends GetWidget<ResultadosController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: Text(
              'Próximamente tambien disponibles las estadisticas de toda la temporada'),
        ),
      ),
    );
  }
}
