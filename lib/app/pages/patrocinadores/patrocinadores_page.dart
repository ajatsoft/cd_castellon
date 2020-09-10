import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'patrocinadores_controller.dart';

class PatrocinadoresPage extends StatelessWidget {
  const PatrocinadoresPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatrocinadoresController>(
      builder: (_) => Scaffold(),
    );
  }
}
