import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/news_controller.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
import 'package:cd_castellon/app/pages/news/widgets/post_list_item.dart';
import 'package:cd_castellon/app/pages/news/widgets/posts_list.dart';

class SingleCategory extends StatelessWidget {
  PostCategory category;

  SingleCategory(this.category);

  @override
  Widget build(BuildContext context) {
    print(category.id);
    return GetBuilder<NewsController>(
        init: NewsController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text(category.name),
            ),
            body: PostsList2(category: category.id),
          );
        });
  }
}
