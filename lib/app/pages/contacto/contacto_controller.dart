import 'dart:core';

import 'package:get/state_manager.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactoController extends GetxController {
  String url = 'https://www.ajatsoft.com';

  Future<void> mail() async {
    await launch(
        'mailto:info@ajatsoft.com?subject=${'Contacto desde app CD Castellon'}');
  }

  Future<void> launchInBrowser() async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  void share() {
    Share.share(
        'Descarga aqui la aplicacion del CD Castellon https://play.google.com/store/apps/details?id=ajatsoft.cd_castellon');
  }

  void launchSocial(String url, String fallbackUrl) async {
    // Don't use canLaunch because of fbProtocolUrl (fb://)
    try {
      bool launched =
      await launch(url, forceSafariVC: false, forceWebView: false);
      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
    }
  }
// Future<void> shareApp() async {
//   await Share.share('Descarga aqui la app https://www.ajatsot.com');
// }

}
