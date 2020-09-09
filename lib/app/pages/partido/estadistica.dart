import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:cd_castellon/app/data/model/partido.dart';

class EstadisticaTemporada extends GetWidget<ResultadosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.linearToSrgbGamma(),
//                 image: NetworkImage(
//                     "https://www.eysmunicipales.es/static/media/images/actualidad/el-estadio-municipal-de-castalia-en-castellon-contara-con-leds-en-sus-cuatro-torres-de-iluminacion.jpg"))),
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
//           child: Container(
//             decoration: BoxDecoration(
//                 color: Theme.of(context).canvasColor.withOpacity(0.0)),
//             child: Container(
//               color: Colors.transparent,
//               child: Center(
//                 child: SafeArea(
//                   child:Obx(
//                         () {
//                       if (controller.isLoading) {
//                         return Center(
//                           child: Text(
//                             'cargando ...',
//                             style: Get.textTheme.headline2,
//                           ),
//                         );
//                       }
//
//                       if (controller.partidos == null) {
//                         return Text('esperando API request.');
//                       }
//
//                       return ListView.builder(
//
//                             itemCount: controller.partidos.length,
//                             itemBuilder: (context, index) {
//                               Competitor partido = controller.partidos[index];
//                               return Container(
//                                 margin: EdgeInsets.all(4.0),
//                                 padding: EdgeInsets.all(4.0),
//                                 decoration: BoxDecoration(
//                                   color: Theme.of(context).canvasColor,
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(10),
//                                       topRight: Radius.circular(10),
//                                       bottomLeft: Radius.circular(10),
//                                       bottomRight: Radius.circular(10)),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 5,
//                                       blurRadius: 7,
//                                       offset: Offset(
//                                           0, 3), // changes position of shadow
//                                     ),
//                                   ],
//                                 ),
//                                 child: GestureDetector(
//                                   onTap: () {
// //                            controller.fetchDataFromESPN(jornada.id);
// //                            Get.toNamed('/partido_detail', arguments: jornada);
//                                   },
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(left: 4.0),
//                                         child: Container(
//                                             width: 30.0,
//                                             height: 30.0,
//                                             decoration: BoxDecoration(
//                                               shape: BoxShape.circle,
//                                               image: DecorationImage(
//                                                 fit: BoxFit.fill,
//                                                 image: NetworkImage(
//                                                     partido.logo),
//                                               ),
//                                             )),
//                                       ),
//                                       Expanded(
//                                         child: Center(
//                                             child: Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text(partido.displayName),
//                                         )),
//                                       ),
//                                       Text("${partido.score}"),
//                                       Text(" - "),
//                                       Text("${partido.score}"),
//                                       Expanded(
//                                         child: Center(
//                                             child: Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text(partido.name),
//                                         )),
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(right: 4.0),
//                                         child: Container(
//                                             width: 30.0,
//                                             height: 30.0,
//                                             decoration: BoxDecoration(
//                                               shape: BoxShape.circle,
//                                               image: DecorationImage(
//                                                 fit: BoxFit.fill,
//                                                 image: NetworkImage(
//                                                     partido.logo),
//                                               ),
//                                             )),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             });
//                   },),
//                 ),
//               ),
//             ),
//           ),
//         ),
    );
  }
}
