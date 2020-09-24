import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  final bool canBack;

  Header({this.canBack = false});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "header",
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: 65,
          padding: EdgeInsets.zero,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Visibility(
                visible: canBack,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 42,
                    height: 42,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.chevronLeft,
                        size: 21,
                      ),
                      onPressed: () => Get.back(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
