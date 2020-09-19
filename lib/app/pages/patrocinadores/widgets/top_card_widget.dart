import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import '../patrocinadores_controller.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'Ajatsoft',
            date:
                'Diseño y desarrollo de aplicaciones y paginas web.\nDiseño Gráfico y videos promocionales',
            url: 'https://www.ajatsoft.com',
            assetName: 'assets/ajat.png',
            offset: pageOffset,
          ),
          SlidingCard(
            name: 'Espacio Disponible',
            date: 'Contacta con nosotros para publicitar tu empresa aqui',
            assetName: 'assets/images/placeholder.jpg',
            url: 'https://www.ajatsoft.com',
            offset: pageOffset - 1,
          ),
          SlidingCard(
            name: 'Espacio Disponible',
            date: 'Contacta con nosotros para publicitar tu empresa aqui',
            assetName: 'assets/images/placeholder.jpg',
            url: 'https://www.ajatsoft.com',
            offset: pageOffset - 2,
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String url;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.date,
    @required this.url,
    @required this.assetName,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        color: Get.isDarkMode ? Colors.black87 : Colors.white,
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset(
                '$assetName',
                height: MediaQuery.of(context).size.height * 0.3,
                alignment: Alignment(-offset.abs(), 0),
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: CardContent(
                name: name,
                date: date,
                url: url,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;
  final String url;
  final double offset;

  const CardContent(
      {Key key,
      @required this.name,
      @required this.date,
      @required this.url,
      @required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatrocinadoresController>(
      builder: (_) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Transform.translate(
              offset: Offset(8 * offset, 0),
              child: Text(name, style: TextStyle(fontSize: 26)),
            ),
            SizedBox(height: 8),
            Transform.translate(
              offset: Offset(32 * offset, 0),
              child: Text(
                date,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(48 * offset, 0),
                  child: RaisedButton(
                    color: AColors.accent,
                    child: Transform.translate(
                      offset: Offset(24 * offset, 0),
                      child: Text('Visitar'),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    onPressed: () {
                      print(url);
                      _.launchInBrowser(url);
                    },
                  ),
                ),
                Spacer(),
                Transform.translate(
                  offset: Offset(32 * offset, 0),
                  child: Text(
                    'Mas Info',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            )
          ],
        ),
      ),
    );
  }
}
