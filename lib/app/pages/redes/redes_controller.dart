import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tweet_ui/models/api/tweet.dart';

import 'data/twitterApiManager.dart';
import 'data/youtube_service.dart';

class RedesController extends GetxController {
  GlobalKey bottomNavigationKey = GlobalKey();

  PageController pageController;

  final _currentIndex = 0.obs;

  get currentIndex => this._currentIndex.value;

  set currentIndex(value) => this._currentIndex.value = value;

  void updatePage(int index) async {
    this.currentIndex = index;
    update();
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 750),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  bool _loading = true;

  bool get loading => _loading;

  // final loadingDialogManager = LoadingDialogManager();
  final refreshController = RefreshController(initialRefresh: false);

  double maxId = double.infinity;

  ///              ///
  ///     TWITTER     ///
  ///             ///

  TwitterApiManager api = TwitterApiManager();

  List<Tweet> tweetsLoaded = List();
  List tweets = [];

  void getTweets(bool onRefresh) async {
    List<Tweet> tweets = await api.getStatuses();
    print(tweets.length);
    refreshController.refreshCompleted();
    if (tweets == null) return;
    if (onRefresh) tweetsLoaded.clear();

    tweetsLoaded.addAll(tweets);
    if (tweetsLoaded.isNotEmpty) {
      maxId = tweetsLoaded.last.id - 1;
    }
    this._loading = false;

    update();
  }

  getNextTweets() async {
    List<Tweet> tweets = await api.getNextStatuses(maxId);
    if (tweets == null) return;
    if (tweetsLoaded.isNotEmpty && tweets.first.id == tweetsLoaded.last.id) {
      tweetsLoaded.removeLast();
    }

    tweetsLoaded.addAll(tweets);
    if (tweetsLoaded.isNotEmpty) {
      maxId = tweetsLoaded.last.id - 1;
    }
    update();
  }

  getTweetsAficcion() async {
    final result = await api.getTweet();
    // print(result);

    tweets = result;
    _loading = false;
    update();
  }

  void refresh() {
    getTweets(true);
  }

  ///              ///
  ///     YOUTUBE       ///
  ///             ///

  List videos = [];

  getVideos() async {
    final result =
        await YoutubeService().searchVideo('Resumen de vs CD Castellón ()');

    videos = result;
    _loading = false;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    // print('oninit twiter controller');
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      getTweets(false);
    });
    getVideos();
    getTweetsAficcion();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
