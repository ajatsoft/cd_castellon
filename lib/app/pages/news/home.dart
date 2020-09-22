import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/pages/news/tabs/categories_tab.dart';
import 'package:cd_castellon/app/pages/news/tabs/home_tab.dart';
import 'package:cd_castellon/app/pages/news/widgets/fade.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/widgets_general/appBar.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';

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
              appBar: CustomAppBar(
                "Noticias",
                leadings: [
                  CustomAppBarAction(
                        () => _scaffoldKey.currentState.openDrawer(),
                    Icons.menu,
                  )
                ],
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
                    () => BottomNavigationBar(
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
