import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contacto_controller.dart';

class ContactoPage extends StatelessWidget {
  const ContactoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactoController>(
      builder: (_) => Scaffold(
        backgroundColor: Get.isDarkMode ? Color(0xFF1E1E1E) : Color(0xFFe0e5ec),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Get.isDarkMode
                      ? Image.asset(
                          'assets/images/ajtsoft_neum_b.png',
                          fit: BoxFit.fill,
                        )
                      : Image.asset(
                          'assets/images/ajtsoft_neum_w.png',
                          fit: BoxFit.fill,
                        )),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(16.0),
                          margin: EdgeInsets.only(top: 24.0),
                          decoration: BoxDecoration(
                              color: Get.isDarkMode
                                  ? Colors.black26
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.30),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Ajatsoft",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text("Diseño app y web"),
                                          // Text("Castellon"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer()
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.30),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                            onPressed: () => _.launchSocial(
                                                'fb://profile/100014943948689',
                                                'https://www.facebook.com/profile.php?id=100014943948689'),
                                            icon: Icon(
                                              FontAwesomeIcons.facebook,
                                              color: Colors.blue,
                                            )),
                                        Text("Facebook")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          onPressed: () => _.launchSocial(
                                              'https://www.instagram.com/ajatsoft/',
                                              ''),
                                          icon: Icon(FontAwesomeIcons.instagram,
                                              color: Colors.purple),
                                        ),
                                        Text("Instagram")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          onPressed: () => _.launchSocial(
                                              'https://twitter.com/ajatsoft/',
                                              ''),
                                          icon: Icon(FontAwesomeIcons.twitter,
                                              color: Colors.lightBlueAccent),
                                        ),
                                        Text("Twitter")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('assets/images/logoajat.png'),
                                fit: BoxFit.fitWidth),
                          ),
                          margin: EdgeInsets.only(left: 16.0, top: 4),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(top: 8.0),
                            decoration: BoxDecoration(
                                color: Get.isDarkMode
                                    ? Colors.black26
                                    : Colors.white70,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: ListTile(
                              title: Text("Email"),
                              subtitle: Text("info@ajatsoft.com"),
                              leading: Icon(Icons.email),
                              trailing: Icon(Icons.arrow_forward_ios),
                              onTap: () => _.mail(),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(top: 8.0),
                            decoration: BoxDecoration(
                                color: Get.isDarkMode
                                    ? Colors.black26
                                    : Colors.white70,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: ListTile(
                              title: Text("Website"),
                              subtitle: Text("https://www.ajatsoft.com"),
                              leading: Icon(Icons.web),
                              trailing: Icon(Icons.arrow_forward_ios),
                              onTap: () => _.launchInBrowser(),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(top: 8.0),
                            decoration: BoxDecoration(
                                color: Get.isDarkMode
                                    ? Colors.black26
                                    : Colors.white70,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: ListTile(
                              title: Text("Comparte app"),
                              leading: Icon(Icons.share),
                              trailing: Icon(Icons.arrow_forward_ios),
                              onTap: _.share,
                            ),
                          ),
                          // ListTile(
                          //   title: Text("Joined Date"),
                          //   subtitle: Text("15 February 2019"),
                          //   leading: Icon(Icons.calendar_view_day),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Get.isDarkMode ? Colors.white70 : Colors.black54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
