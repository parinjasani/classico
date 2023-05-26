import 'package:classico/nestedlist/model/product.dart';

class Category{
  String title;
  var productlist=<Product>[];
  Category({required this.title, required this.productlist});
}