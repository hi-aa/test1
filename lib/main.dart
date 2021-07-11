import 'package:flutter/material.dart';

void main() => runApp(Test());

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title here',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main title'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('a'),
            Text('b'),
            Text('c')
          ],
        ),
      ),
    );
  }
}
