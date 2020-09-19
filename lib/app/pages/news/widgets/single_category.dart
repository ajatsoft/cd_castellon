import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
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
              backgroundColor: Colors.transparent,
              iconTheme: Theme.of(context).iconTheme,
              elevation: 0,
              title: Text(
                category.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            body: PostsList2(category: category.id),
          );
        });
  }
}
