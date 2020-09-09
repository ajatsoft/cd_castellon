import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';


class PartidoCSAlineacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:                GetX<PartidoHomeController>(
            init: PartidoHomeController(),
            builder: (_) {
              return Container();
            }),
      ),
    );
  }
}
