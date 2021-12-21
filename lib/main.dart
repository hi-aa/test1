import 'package:flutter/material.dart';

// route를 이용한 화면 전환
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    // home: MyApp(),
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/second': (context) => Second()
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Open Second'),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
              Navigator.pushNamed(context, '/second');
            },
          ),
        )
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back to First'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}