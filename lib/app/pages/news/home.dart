import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/pages/news/tabs/categories_tab.dart';
import 'package:cd_castellon/app/pages/news/tabs/home_tab.dart';
import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        init: NewsController(),
        builder: (_) {
          return Scaffold(
            // backgroundColor: Theme.of(context).backgroundColor,
              key: _scaffoldKey,
              resizeToAvoidBottomPadding: false,
              drawer: AppDrawer(),
              appBar: AppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                elevation: 0,
                title: Text(
                  'Noticias',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                ),
                leading: CustomAppBarAction(
                  () => _scaffoldKey.currentState.openDrawer(),
                  Icons.menu,
                ),
              ),
              body: Stack(
                children: [
//                Watermark(),
//                 Fade(),
                  Container(
                    alignment: Alignment.center,
                    child: SafeArea(
                      child: Obx(
                        () => IndexedStack(
                          index: _.currentIndex,
                          children: <Widget>[
                            HomeTab(),
                            CategoriesTab(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: Obx(
                    () =>
                    BottomNavigationBar(
                      currentIndex: _.currentIndex,
                      onTap: _.onTabTapped,
                      unselectedItemColor: Colors.grey,
                      selectedItemColor: AppThemes.yellowCS,
                      unselectedFontSize: 10,
                      selectedFontSize: 14,
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text("Inicio")),
                        BottomNavigationBarItem(
                        icon: Icon(Icons.category), title: Text("Categorias")),
                  ],
                ),
              ));
        });
  }
}
