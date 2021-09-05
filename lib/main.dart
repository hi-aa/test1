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
       child: Center(
         // child: Column(
         child: Row(
           // verticalDirection: VerticalDirection.up,
           // mainAxisAlignment: MainAxisAlignment.center,
           // mainAxisSize: MainAxisSize.min,
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           // crossAxisAlignment: CrossAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Container(
               width: 100,
               color: Colors.white,
               child: Text('Container 1'),
             ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                width: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              // Container( // invisible container
              //   width: double.infinity,
              //   height: 20,
              // )
           ],
         ),
       ),
      ),
    );
  }
}
