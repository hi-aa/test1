import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug 띠 제거
      title: 'My Home Page',
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('AA Title'),
        backgroundColor: Colors.orange[800],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 세로축 정렬기준을 정함
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('cat2.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0, // divider 영역의 total height
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text(
              'Name'
              , style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0
              ),
            ),
            SizedBox( // 빈 공간을 추가한 것
              height: 10.0,
            ),
            Text('Cat1',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Power Level'
              , style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0
            ),
            ),
            SizedBox( // 빈 공간을 추가한 것
              height: 10.0,
            ),
            Text('15',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline), // 기본제공 하나보네
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline), // 기본제공 하나보네
                SizedBox(
                  width: 10.0,
                ),
                Text('face here tattoo',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline), // 기본제공 하나보네
                SizedBox(
                  width: 10.0,
                ),
                Text('fire flames',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('flower3.jpg'),
                radius: 40.0,
                backgroundColor: Colors.amber[800], // 투명 이미지인 경우 background color와 동일한 색상을 배경색으로 적용함
              ),
            )
          ],
        ),
      ),
    );
  }
}
