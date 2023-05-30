import 'package:classico/nestedlist/model/category.dart';
import 'package:classico/nestedlist/model/product.dart';
import 'package:flutter/material.dart';

class InspectScreeen extends StatelessWidget {
  Product product;
  InspectScreeen(this.product);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("${product.productname}"),
      ),
      body: Column(
        children: [
             Image.asset("${product.image}",height: size.width,
               width: size.width,),

        ],
      ),
    );
  }
}

