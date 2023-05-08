import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 375,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(125, 70),
                  bottomRight: Radius.elliptical(125, 70),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black87,
                    Colors.black54
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
                )
            ),
            Positioned(
              child: Text(
                ' PIET-1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
                ),
              ),
            ),
            Positioned(
              top:135,
              child: Text(
                ' JASANI PARINKUMAR RAMESHBHAI',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white

                ),
              ),
            ),
            Positioned(
              top: 155,

              child: Text(
                ' (2103030105034)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),
              ),
            ),
            Positioned(

              top: 183,
              child: Text(
                ' 7046910190 | 2103030105034@paruluniversity.ac.in',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
            ),
            Positioned(
              top:193,
              child: Text(
                '-------------------------------------------------',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            Positioned(
              top: 208,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  gettextcolunm('  Branch  ', 'CSE'),
                  gettextcolunm(' SEM  ','4TH'),
                  gettextcolunm(' DIVISION  ','4B24_CSE_202223'),
                  gettextcolunm(' Roll No.  ','6'),
                  gettextcolunm(' Batch ','1'),
                ],
              ),
            ),

            Positioned(
              top: 260,
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          " Mentor Name:                              ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " Miss Apeksha AnilKumar Joshi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text("                "),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                      child: Icon(Icons.phone,size: 25,color: Colors.white),
                    ),
                    Text("   "),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                      child: Icon(Icons.mail_outline_outlined,size: 25,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 340,
              child: Stack(
                children: [
                  Row(
                    children: [
                      getcard(Icons.calendar_month_sharp),
                      getcard(Icons.table_chart_rounded),
                      getcard(Icons.co_present_rounded),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 470,
              child: Stack(
                children: [
                  Row(
                    children: [
                      getcard(Icons.sticky_note_2_rounded),
                      getcard(Icons.assessment_outlined),
                      getcard(Icons.notifications_active),
                    ],
                  ),
                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
Widget gettextcolunm(String str1,String str2)
{
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(str1,style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: Colors.white
      ),
      ),
      Text(str2,style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 17,
        color: Colors.white
        ),
      ),
    ],
  );
}
Widget getcard(IconData icon)
{
  return  Container(
    width: 100,
    height: 100,
    margin: EdgeInsets.only(left: 23),
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(15),
      boxShadow:
      [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 18,
          spreadRadius: 5,
          offset: Offset(2,5),
        )
      ],
      ),

      child: Icon(icon,size: 35,color: Colors.red.shade600,),

    );
}
Widget  getText(String str1)
{
   return Positioned(
      bottom: 20,
      left: 30,
      child: Container(
      child: Text(str1,style: TextStyle(color: Colors.white,fontSize: 16),
        ),
      )
  );
}
