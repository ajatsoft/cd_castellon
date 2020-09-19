import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/config.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
import 'package:cd_castellon/app/data/provider/news_api.dart';

class NewsController extends GetxController {

  static NewsController get to => Get.find();

  List<PostEntity> _news = [];
  List<PostEntity> _featuredNews = [];
  List<PostEntity> _categoryNews2 = [];
  List<PostCategory> _categories = [];
  bool _loading = true;

  int categoriaActualizada;
  int page = 1;

  List<PostEntity> get news => _news;
  List<PostEntity> get featuredNews => _featuredNews;
  List<PostEntity> get categoryNews2 => _categoryNews2;
  List<PostCategory> get categories => _categories;
  bool get loading => _loading;

  ScrollController _scrollController = new ScrollController();
  ScrollController get scrollController => _scrollController;

  @override
  void onInit() {
    print('onInit $categoriaActualizada');
    this.loadNews();
//    this.loadFeaturedNews();
    this.loadCategories();
    super.onReady();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        getData();
      }
    });
  }

//  @override
//  void onClose() {
//    _scrollController?.dispose();
//    super.onClose();
//  }

  void getData() {
    if (!_loading) {
      print('getData $categoriaActualizada');

      page++;
      WpApi.instance
        ..getPostsList(page: page, category: categoriaActualizada)
            .then((_posts) {
          _loading = false;
          _categoryNews2.addAll(_posts);
          update(['categoryNews']);
        });
    }
  }

  Future<void> loadNews() async {
    final data = await WpApi.instance.getPostsList();
    this._news = data;
    this._loading = false;
    update();
  }

  Future<void> loadFeaturedNews() async {
    final data =
        await WpApi.instance.getPostsList(category: FEATURED_CATEGORY_ID);
    this._featuredNews = data;
    this._loading = false;
    update(["featuredNews"]);
  }

  Future<void> loadCategoryNews(category) async {
    categoriaActualizada = category;
    final data = await WpApi.instance.getPostsList(category: category);
    this._categoryNews2 = data;
    this._loading = false;
    update(["categoryNews"]);
    print('loadCategoryNews....category $category');
    print('loadCategoryNews....categoriaActualizada $categoriaActualizada');
  }

  Future<void> loadCategories() async {
    final data = await WpApi.instance.getCategoriesList();
    this._categories = data;
    this._loading = false;
    update();
  }

  final _currentIndex = 0.obs;

  set currentIndex(value) => this._currentIndex.value = value;

  get currentIndex => this._currentIndex.value;

  changeTab(int index) {
    this.currentIndex = index;
  }

  onTabTapped(int index) {
    this.currentIndex = index;
  }

  RxBool finished = RxBool(false);

  setFinished(bool finished) => this.finished.value = finished;
  RxBool visible = RxBool(false);

  setVisible(bool visible) => this.visible.value = visible;
}
