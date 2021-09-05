import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to second page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => SecondPage())

            );
//           ));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second PAge'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to second page'),
          onPressed: () {
            Navigator.pop(ctx);

          },
        ),
      ),
    );
  }
}

class tt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}