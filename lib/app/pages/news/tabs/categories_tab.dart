import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/news_controller.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';

import 'package:cd_castellon/app/pages/news/widgets/single_category.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        init: NewsController(),
        initState: (_) {
          NewsController.to.loadCategories();
        },
        builder: (_) {
      if (_.loading) {
        return Center(
          child: LinearProgressIndicator(),
        );
      }
      return ListView.builder(
        itemBuilder: (context, index) {
          final PostCategory category = _.categories[index];
          return ListTile(
            title: Text(category.name),
            onTap: () {
              Get.to(
                SingleCategory(category),
              );
            },
          );
        },
        itemCount: _.categories.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      );
    });
  }
}

//class CategoriesTab extends StatelessWidget {
//  Widget build(BuildContext context) {
//    return GetBuilder<NewsController>(
//      init: NewsController(),
//      initState: (_) {
//        NewsController.to.getTodosEstados();
//      },
//      builder: (_) {
//        if (_.model == null) {
//          return CircularProgressIndicator();
//        } else {
//          return Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              SingleChildScrollView(
//                child: Container(
//                  padding: EdgeInsets.all(5),
//                  margin: EdgeInsets.all(2),
//                  color: Colors.white,
//                  child: DataTable(
//                    sortAscending: _.sort,
//                    sortColumnIndex: 2,
//                    columns: [
//                      DataColumn(
//                        label: Text(
//                          'Estado',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 13,
//                            color: Colors.black,
//                          ),
//                        ),
//                        numeric: false,
//                        onSort: (columnIndex, ascending) {
//                          _.sort = !_.sort;
//                          _.onSortColum(columnIndex, ascending);
//                        },
//                      ),
//                      DataColumn(
//                        label: Text(
//                          'Confirmados',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 13,
//                            color: Colors.black,
//                          ),
//                        ),
//                        numeric: false,
//                        onSort: (columnIndex, ascending) {
//                          _.sort = !_.sort;
//                          _.onSortColum(columnIndex, ascending);
//                        },
//                      ),
//                      DataColumn(
//                        label: Text(
//                          'Mortes',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 13,
//                            color: Colors.black,
//                          ),
//                        ),
//                        numeric: false,
//                        onSort: (columnIndex, ascending) {
//                          _.sort = !_.sort;
//                          _.onSortColum(columnIndex, ascending);
//                        },
//                      ),
//                    ],
//                    rows: _.model.data
//                        .map(
//                          (item) => DataRow(
//                        cells: [
//                          DataCell(
//                            Text(item.uf),
//                            onTap: () {},
//                          ),
//                          DataCell(
//                            Text(
//                              item.cases.toString(),
//                            ),
//                            onTap: () {},
//                          ),
//                          DataCell(
//                            Text(
//                              item.deaths.toString(),
//                            ),
//                            onTap: () {
//                              print(item.deaths.toString());
//                            },
//                          ),
//                        ],
//                      ),
//                    )
//                        .toList(),
//                    dataRowHeight: 40,
//                  ),
//                ),
//              ),
//            ],
//          );
//        }
//      },
//    );
//  }
//}