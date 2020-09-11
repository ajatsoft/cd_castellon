import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
import 'package:cd_castellon/app/pages/news/widgets/post_card.dart';

class FeaturedCategoryList extends StatelessWidget {
  List<PostEntity> posts = new List<PostEntity>();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        id: "featuredNews",
        builder: (_) {
          if (_.loading) {
            _.loadFeaturedNews();
            return Center(
              child: ColorLoader(),
            );
          }
          return ListView.builder(
            itemCount: _.featuredNews?.length ?? 0,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return PostCard(_.featuredNews[index], isFeaturedList: true);
            },
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
