import 'package:classico/nestedlist/model/product.dart';
import 'package:flutter/material.dart';

import '../model/category.dart';

class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  var categorylist=<Category>[];
  var productList=<Product>[];
  @override
  void initState() {
    // TODO: implement initState
    productList.add(Product(productname: "banana", image: "assets/images/banana.jpg"));
    productList.add(Product(productname: "grapes", image: "assets/images/grapes.jpg"));
    productList.add(Product(productname: "guava", image: "assets/images/guava.jpg"));
    productList.add(Product(productname: "water bottle", image: "assets/images/water_bottle.jpg"));
    productList.add(Product(productname: "banana", image: "assets/images/banana.jpg"));
    categorylist.add(Category(title: "top rated",productlist: productList));
    categorylist.add(Category(title: "most view",productlist: productList));
    categorylist.add(Category(title: "top 10",productlist: productList));
    categorylist.add(Category(title: "new launce",productlist: productList));
    categorylist.add(Category(title: "upcoming",productlist: productList));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.separated(
          //padding: EdgeInsets.all(12),
          itemCount: categorylist.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${categorylist[index].title}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(
                  height: (MediaQuery.of(context).size.height)*0.23,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.all(12),
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Container(
                          color: Colors.green[100],
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Image.asset("${productList[index].image}",height:100,),
                              ),
                              Text("${productList[index].productname}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

              ],
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 5,
             // width: 5,
            );
          },
        ));
  }
}
