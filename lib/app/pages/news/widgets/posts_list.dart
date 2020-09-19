import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
import 'package:cd_castellon/app/pages/news/widgets/post_list_item.dart';

class PostsList extends StatelessWidget {
  PostsList({this.category = 0});

  List<PostEntity> posts = new List<PostEntity>();
  bool isLoading = false;
  int category = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        id: 'news',
        builder: (_) {
          if (_.loading) {
            return Center(
              child: ColorLoader(),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              if (index == _.news.length) {
                return _buildProgressIndicator();
              } else {
                return PostListItem(_.news[index]);
              }
            },
            itemCount: _.news.length + 1,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
//        controller: _.scrollController,
          );
        });
  }

  Widget _buildProgressIndicator() {
//    return new Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Center(
//        child: Visibility(
//          visible: !isLoading,
//          child: CircularProgressIndicator(),
//        ),
//      ),
//    );
  }
}

class PostsList2 extends StatelessWidget {
  int category;

  PostsList2({this.category});

  final NewsController controller = Get.find<NewsController>();

  List<PostEntity> posts = new List<PostEntity>();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        id: "categoryNews",
        builder: (_) {
          if (isLoading) {
            controller.loadCategoryNews(category);
            isLoading = false;
            return Center(
              child: ColorLoader(),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              if (index == _.categoryNews2.length) {
                return _buildProgressIndicator();
              } else {
                return PostListItem(_.categoryNews2[index]);
              }
            },
            itemCount: _.categoryNews2.length + 1,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            controller: _.scrollController,
          );
        });
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Visibility(
          visible: !isLoading,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

//                print('build:::: $category');
//                print('builder:::: $category');
//                print('loading2:::: ${_.loading}');
//                print('featuredNews:::: ${_.featuredNews2.length}');
