import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/pages/news/widgets/single_category.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
        builder: (_) => Column(
              children: [
                if (_.categories != [])
                  Column(
                    children: [
                      ListTile(
                        title: Text(_.categories[0].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[0]),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(_.categories[1].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[1]),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(_.categories[2].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[2]),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(_.categories[3].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[3]),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(_.categories[4].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[4]),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(_.categories[5].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[5]),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(_.categories[6].name),
                        onTap: () {
                          Get.to(
                            SingleCategory(_.categories[6]),
                          );
                        },
                      ),
                    ],
                  )
                else
                  (Center(
                    child: ColorLoader(),
                  ))

                //
              ],
            ));
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
