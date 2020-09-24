import 'package:cd_castellon/app/data/model/patrocinadoresModel.dart';
import 'package:flutter/material.dart';

class AboutProduct extends StatelessWidget {
  final Empresa product;

  AboutProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        top: 10,
        right: 25,
        bottom: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.product.subText,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            this.product.nombre,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 46,
            ),
          ),
          SizedBox(height: 15),
          // Stars(this.product.rate.value),
          SizedBox(height: 15),
          Text(
            this.product.descripcion,
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 15),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: <Widget>[
          //     PickSize(),
          //     PickQuantity(),
          //   ],
          // ),
        ],
      ),
    );
  }
}
