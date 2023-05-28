import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intrinsic Height and Width'),
      ),
      /* body: Center(child: columnWidget()),*/
      body: Center(
        child: rowWidget(),
      ),
    );
  }
}

columnWidget() {
  return IntrinsicWidth(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 200,
          color: Colors.green,
        ),
        Container(
          height: 80,
          width: 150,
          color: Colors.red,
        ),
        Container(
          height: 80,
          color: Colors.amber,
          child: Text(
              'Welcome to Tops Technologies.. Its a leading'
          ),
        )
      ],
    ),
  );
}

rowWidget() {
  return IntrinsicHeight(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 80,
          color: Colors.green,
        ),
        Container(
          height: 150,
          width: 80,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 80,
          color: Colors.amber,
          child: Text(
              'Welcome to Tops Technologies.. Its a leading'
          ),
        )
      ],
    ),
  );
}
