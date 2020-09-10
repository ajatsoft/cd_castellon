
import 'package:flutter/material.dart';
import 'package:cd_castellon/app/data/model/partido.dart';

class PartidoResumen extends StatelessWidget {
  final Event partido;



  const PartidoResumen(this.partido);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        bottom: false,
        top: false,
        child:

        Container(
         //    decoration: BoxDecoration(
         //        image: DecorationImage(
         //            fit: BoxFit.cover,
         //            colorFilter: ColorFilter.linearToSrgbGamma(),
         //            image: NetworkImage(
         //                "https://www.eysmunicipales.es/static/media/images/actualidad/el-estadio-municipal-de-castalia-en-castellon-contara-con-leds-en-sus-cuatro-torres-de-iluminacion.jpg"))),
         //    child: BackdropFilter(
         //        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
         //        child: Container(
         //          decoration: BoxDecoration(
         //              color: Theme.of(context).canvasColor.withOpacity(0.5)),
         //          child:
         //           ListView.separated(
         //            // itemCount: numerogoles,
         //            itemBuilder: (BuildContext context, index) {
         //              // var golHomeDetail =
         //              //     (golHome.length > 0) ? golHome[index] : '';
         //              // var golAwayDetail =
         //              //     (golAway.length > 0) ? golAway[index] : '';
         //
         //              return Column(children: [
         // Center(
         //   child: Text(
         //     partido.date,
         //     style: Theme.of(context).textTheme.caption,
         //   ),
         // ),
         //                Padding(
         //                  padding: const EdgeInsets.all(4.0),
         //                  child: Row(children: [
         //                    // Expanded(
         //                    //   flex: 5,
         //                    //   child:
         //                    //   // (golHome.length > 0)
         //                    //       ? SizedBox(
         //                    //           height: 38.0,
         //                    //           child: Container(
         //                    //               margin: EdgeInsets.all(4.0),
         //                    //               padding: EdgeInsets.all(4.0),
         //                    //               decoration: BoxDecoration(
         //                    //                   color:
         //                    //                       Theme.of(context).canvasColor,
         //                    //                   borderRadius: BorderRadius.only(
         //                    //                       topLeft: Radius.circular(10),
         //                    //                       topRight: Radius.circular(10),
         //                    //                       bottomLeft:
         //                    //                           Radius.circular(10),
         //                    //                       bottomRight:
         //                    //                           Radius.circular(10)),
         //                    //                   boxShadow: [
         //                    //                     BoxShadow(
         //                    //                         color: Colors.grey
         //                    //                             .withOpacity(0.5),
         //                    //                         spreadRadius: 3,
         //                    //                         blurRadius: 4,
         //                    //                         offset: Offset(0,
         //                    //                             3) // changes position of shadow
         //                    //                         )
         //                    //                   ]),
         //                    //               child: Stack(
         //                    //                 alignment:
         //                    //                     FractionalOffset.centerRight,
         //                    //                 children: [
         //                    //                   Center(
         //                    //                     child:
         //                    //                         Text(golHomeDetail ?? ''),
         //                    //                   )
         //                    //                 ],
         //                    //               )),
         //                    //         )
         //                    //       : Container(),
         //                    // ),
         //                    // Expanded(
         //                    //   flex: 5,
         //                    //   child: (golAway.length > 0)
         //                    //       ? SizedBox(
         //                    //           height: 38.0,
         //                    //           child: Container(
         //                    //               margin: EdgeInsets.all(4.0),
         //                    //               padding: EdgeInsets.all(4.0),
         //                    //               decoration: BoxDecoration(
         //                    //                 color:
         //                    //                     Theme.of(context).canvasColor,
         //                    //                 borderRadius: BorderRadius.only(
         //                    //                     topLeft: Radius.circular(10),
         //                    //                     topRight: Radius.circular(10),
         //                    //                     bottomLeft: Radius.circular(10),
         //                    //                     bottomRight:
         //                    //                         Radius.circular(10)),
         //                    //                 boxShadow: [
         //                    //                   BoxShadow(
         //                    //                       color: Colors.grey
         //                    //                           .withOpacity(0.5),
         //                    //                       spreadRadius: 3,
         //                    //                       blurRadius: 4,
         //                    //                       offset: Offset(0,
         //                    //                           3) //changes position of shadow
         //                    //                       )
         //                    //                 ],
         //                    //               ),
         //                    //               child: Stack(
         //                    //                 children: [
         //                    //                   Center(
         //                    //                     child:
         //                    //                         Text(golAwayDetail ?? ''),
         //                    //                   )
         //                    //                 ],
         //                    //               )),
         //                    //         )
         //                    //       : Container(),
         //                    // ),
         //                  ]),
         //                )
         //              ]);
         //            },
         //            separatorBuilder: (BuildContext context, index) {
         //              return Divider(
         //                height: 0.0,
         //                color: Colors.transparent,
         //              );
         //            },
         //          ),
         //        ),
         //    )
    ),
    );
  }
}
