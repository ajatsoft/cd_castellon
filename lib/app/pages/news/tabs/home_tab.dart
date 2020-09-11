import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:cd_castellon/app/config.dart';
import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
import 'package:cd_castellon/app/pages/news/widgets/single_category.dart';
import 'package:cd_castellon/app/pages/news/widgets/featured_category_list.dart';
import 'package:cd_castellon/app/pages/news/widgets/posts_list.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        init: NewsController(),
        initState: (_) {
          NewsController.to.onInit();
        },
        builder: (_) {
          return Container(
            padding: EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListHeading(FEATURED_CATEGORY_TITLE, FEATURED_CATEGORY_ID),
                  Container(
                    height: 250.0,
                    child: FeaturedCategoryList(),
                  ),
                  ListHeading('Últimas', 0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: PostsList(),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class ListHeading extends StatelessWidget {
  final String title;
  final int categoryId;

  ListHeading(this.title, this.categoryId);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          GestureDetector(
            onTap: () {
              PostCategory category = PostCategory(name: title, id: categoryId);
              Get.to(SingleCategory(category));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: AColors.accent.withAlpha(99),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Text('Mostrar todas'),
            ),
          )
        ],
      ),
    );
  }
}
