// import 'package:classico/cart_app/pages/homepage.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Intropage extends StatelessWidget {
//   const Intropage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           //logo
//           Padding(
//               padding:
//                   EdgeInsets.only(top: 160, right: 40, left: 40, bottom: 40),
//               child: Image.asset('assets/images/guava.jpg')),
//           Padding(
//               padding: EdgeInsets.all(30),
//               child: Text(
//                 'We deliver groceries at your doorstep',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.notoSerif(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold
//                 ),
//               )
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             'Fresh items every day',
//             style: TextStyle(color:Colors.grey,fontSize: 18),
//           ),
//           //
//          SizedBox(
//            height: 30,
//          ),
//           GestureDetector(
//             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.deepPurple,
//                   borderRadius: BorderRadius.circular(12)),
//               padding: EdgeInsets.all(24),
//               child: Text(
//                 'Get started',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
