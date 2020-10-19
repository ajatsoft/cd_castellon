import 'package:cd_castellon/app/pages/redes/redes_controller.dart';
import 'package:cd_castellon/app/pages/redes/widgets/channel_youtube_component.dart';
import 'package:cd_castellon/app/pages/redes/widgets/tweet_component.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tweet_ui/embedded_tweet_view.dart';

class RedesView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RedesController>(
        // init: TwitterController(),
        builder: (controller) {
      if (controller.loading) {
        return Center(
          child: ColorLoader(),
        );
      }
      return Scaffold(
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
          bottomNavigationBar: CurvedNavigationBar(
            color: Theme.of(context).scaffoldBackgroundColor,
            key: controller.bottomNavigationKey,
            index: 0,
            height: 60.0,
            items: <Widget>[
              Center(
                child: Icon(
                  FontAwesomeIcons.twitter,
                  size: 25,
                  color: Colors.lightBlueAccent,
                ),
              ),
              Center(
                child: Icon(
                  FontAwesomeIcons.youtube,
                  size: 25,
                  color: Colors.red,
                ),
              ),
              Center(child: Icon(FontAwesomeIcons.users, size: 25)),
            ],
            buttonBackgroundColor: Theme.of(context).appBarTheme.color,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: controller.updatePage,
          ),
          body: SizedBox.expand(
              child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            onPageChanged: (index) {},
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Scrollbar(
                      child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: SmartRefresher(
                              controller: controller.refreshController,
                              enablePullDown: true,
                              enablePullUp: false,
                              onRefresh: () => controller.refresh(),
                              child: ListView(
                                children: <Widget>[
                                  ...controller.tweetsLoaded.map((tweet) =>
                                      Card(
                                          color: (Get.isDarkMode)
                                              ? Colors.grey[800]
                                              : Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          elevation: 2,
                                          child: EmbeddedTweetView.fromTweet(
                                            tweet,
                                            useVideoPlayer: true,
                                            backgroundColor: (Get.isDarkMode)
                                                ? Colors.grey[800]
                                                : Colors.white,
                                            darkMode: Get.isDarkMode,
                                          ))),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: RaisedButton(
                                      elevation: 2,
                                      child: Text("Cargar más"),
                                      onPressed: controller.getNextTweets,
                                    ),
                                  )
                                ],
                              ))))),
              Scaffold(
                body: controller.loading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        child: controller.videos == null
                            ? Center(
                                child: Text('No Data'),
                              )
                            : VideoComponent(
                                videos: controller.videos,
                              ),
                      ),
              ),
              Scaffold(
                body: controller.loading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        child: controller.tweets == null
                            ? Center(
                                child: Text('No Data'),
                              )
                            : TweetComponent(
                                tweets: controller.tweets,
                              )),
              ),
            ],
          )));
    });
  }
}
