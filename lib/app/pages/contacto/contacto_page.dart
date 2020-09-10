import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'contacto_controller.dart';

class ContactoPage extends StatelessWidget {
  const ContactoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactoController>(
      builder: (_) => Scaffold(),
    );
  }
}
