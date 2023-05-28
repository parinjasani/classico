import 'package:classico/nestedlist/model/category.dart';
import 'package:classico/nestedlist/model/product.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  Category category;

  ViewAll({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        itemCount: category.productlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              alignment: Alignment.center,
              height: 180,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green[100]),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      "${category.productlist[index].image}",
                      height: 150,
                      width: 150,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23)),
                  ),
                  Text("${category.productlist[index].productname}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
