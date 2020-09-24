import 'package:flutter/material.dart';

class LogoIcon extends StatelessWidget {
  final String url;
  final double height;
  final bool allowSvg;

  const LogoIcon(this.url, this.height, this.allowSvg);

  @override
  Widget build(BuildContext context) {
    try {
      if (url != null && url.isNotEmpty) {
        if (allowSvg && url.toLowerCase().endsWith('.svg')) {
          return Image.network(
            url,
            height: height,
          );
        }
        if (url.toLowerCase().endsWith('.png')) {
          return Image.network(
            url,
            height: height,
          );
        }
      }
    } catch (e) {
      print('Exception in _buildImage for $url: $e');
    }

    return CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: height / 2,
    );
  }
}

class LogoIconAsset extends StatelessWidget {
  final String team;
  final double height;
  final bool allowSvg;

  const LogoIconAsset(this.team, this.height, this.allowSvg);

  @override
  Widget build(BuildContext context) {
    try {
      if (team == "4438") {
        return Image.asset(
          'assets/images/castellon.png',
          height: height,
        );
      } else if (team == "5419") {
        return Image.asset(
          'assets/images/carthagene.png',
          height: height,
        );
      } else if (team == "11487") {
        return Image.asset(
          'assets/images/sabadell.png',
          height: height,
        );
      } else {
        return Image.asset(
          'assets/images/ud-logrones.png',
          height: height,
        );
      }
    } catch (e) {
      print('Exception in _buildImage for : $e');
    }
    return CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: height / 2,
    );
  }
}
