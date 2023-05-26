import 'package:flutter/material.dart';
class GroceryItemTile extends StatelessWidget {
  final String itemname;
  final String itemprice;
  final String imagepath;
  final color;
  void Function()? onPressed;
  GroceryItemTile({super.key,required this.itemname, required this.itemprice, required this.imagepath, required this.color,
    required this.onPressed});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagepath,
            height: 64,),
            Text(itemname),
            MaterialButton(onPressed: onPressed,
            color: color[800],
            child: Text('\$'+itemprice,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),)

          ],
        ),
      ),
    );
  }
}
