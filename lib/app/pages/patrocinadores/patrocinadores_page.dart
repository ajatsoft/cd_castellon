import 'package:cd_castellon/app/pages/patrocinadores/widgets/item_title.dart';
import 'package:cd_castellon/app/pages/patrocinadores/widgets/list.dart';
import 'package:cd_castellon/app/pages/patrocinadores/widgets/paralax_animation.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'patrocinadores_controller.dart';

class PatrocinadoresPage extends StatelessWidget {
  const PatrocinadoresPage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return GetBuilder<PatrocinadoresController>(
      init: PatrocinadoresController(),
      builder: (controller) =>
          Scaffold(
            key: _scaffoldKey,

            // backgroundColor: AppColors.starbucksGreen,
            appBar: AppBar(
              leading: CustomAppBarAction(
                    () => _scaffoldKey.currentState.openDrawer(),
                Icons.menu,
              ),
              title: Text(
                'Patrocinadores',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            drawer: AppDrawer(),
            body: Stack(
              children: <Widget>[
// Watermark(),
                Leafs(),
                Container(
                  alignment: Alignment.center,
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        // Header(),
                        SizedBox(height: 60),
                        ItemTitle(),
                        Expanded(child: ListProducts()),
                      ],
                    ),
                  ),
                ),


// Fade(),


              ],
            ),
          ),
    );
  }
// @override
// Widget build(BuildContext context) {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   return GetBuilder<NextPartidoController>(
//     builder: (_) => Scaffold(
//       key: _scaffoldKey,
//       drawer: AppDrawer(),
//       appBar: AppBar(
//         leading: CustomAppBarAction(
//               () => _scaffoldKey.currentState.openDrawer(),
//           Icons.menu,
//         ),
//         title: Text(
//           'Patrocinadores',
//           style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: <Widget>[
//           SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                     SizedBox(height: 40),
//                     // Tabs(),
//                     // SizedBox(height: 8),
//                     SlidingCardsView(),
//                   ],
//                 ),
//               ),
//               ExhibitionBottomSheet(), //use this or ScrollableExhibitionSheet
//             ],
//           ),
//         ),
//   );
// }
}
