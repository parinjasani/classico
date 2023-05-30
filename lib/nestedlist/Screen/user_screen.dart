import 'package:classico/nestedlist/Screen/inspect_screen.dart';
import 'package:classico/nestedlist/Screen/viewall.dart';
import 'package:classico/nestedlist/model/product.dart';
import 'package:flutter/material.dart';

import '../model/category.dart';

class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  var categorylist = <Category>[];
  var productList = <Product>[];
  var productList2 = <Product>[];

  @override
  void initState() {
    // TODO: implement initState
    productList
        .add(Product(productname: "banana", image: "assets/images/banana.jpg"));
    productList
        .add(Product(productname: "grapes", image: "assets/images/grapes.jpg"));
    productList
        .add(Product(productname: "guava", image: "assets/images/guava.jpg"));
    productList.add(Product(
        productname: "water bottle", image: "assets/images/water_bottle.jpg"));
    productList
        .add(Product(productname: "banana", image: "assets/images/banana.jpg"));
    productList2.add(Product(
        productname: "water bottle", image: "assets/images/water_bottle.jpg"));
    categorylist.add(Category(title: "Top rated", productlist: productList));
    categorylist.add(Category(title: "Most view", productlist: productList2));
    categorylist.add(Category(title: "Top 10", productlist: productList));
    categorylist.add(Category(title: "New launce", productlist: productList));
    categorylist.add(Category(title: "Upcoming", productlist: productList));

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
          itemBuilder: (context, index12) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left:8.0),
                      child: Text(
                        "${categorylist[index12].title}",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAll(category: categorylist[index12]),));
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,decoration: TextDecoration.underline),

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height) * 0.23,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.all(12),
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: categorylist[index12].productlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => InspectScreeen(categorylist[index12].productlist[index]),));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green[100]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Image.asset(
                                    "${categorylist[index12].productlist[index].image}",
                                    height: 100,
                                        width: 150,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(23)
                                  ),),
                                ),
                                Text("${categorylist[index12].productlist[index].productname}"),
                              ],
                            ),
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
