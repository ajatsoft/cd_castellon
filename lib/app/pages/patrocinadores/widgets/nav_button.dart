import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  NavButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 34,
      ),
      padding: EdgeInsets.all(10),
      shape: CircleBorder(),
    );
  }
}
