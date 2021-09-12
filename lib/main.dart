import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
//      home: MyPage(),
     home: MyButtons(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Like a new Snack Bar!'),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // 페이지 이동
                  Navigator.push(context
                      , MaterialPageRoute(builder: (context) => ThirdPage())
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Go Second Page'),
        onPressed: () {
          Navigator.push(context
              , MaterialPageRoute(builder: (context) => SecondPage())
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          '좋아요가 추가되었습니다.',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger( // root scaffold가 아님
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder( // 다시 builder를 추가해서
          builder: (context) { // context를 찾아줌?
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '좋아요를 취소하시겠습니까?.',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.redAccent
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('좋아요가 취소되었습니다.'),
                              duration: Duration(seconds: 3),
                            )

                        );
                      }, child: Text('취소하기'))
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  print('click text button');
                }, child: Text(
              'Text Button',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
              style: TextButton.styleFrom(
                primary: Colors.red,
                // backgroundColor: Colors.blue
              ),
            ),
            ElevatedButton(
                onPressed: null, // 버튼 비활성화
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent, // 배경색
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)

                ),
                onSurface: Colors.pink
              ),
            ),
            OutlineButton(
                onPressed: () {
                  print('Outlined');
              },
              child: Text('Outlined button'),
              borderSide: BorderSide(
                color: Colors.black87,
                width: 2.0
              ),
            ),
            TextButton.icon(
                onPressed: () {

                  },
                icon: Icon(
                  Icons.home,
                ),
                label: Text('go to home')
              ),
            ButtonBar( // 정렬
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20), // 버튼 패딩
              children: [
                TextButton(
                    onPressed: () {
                      },
                    child: Text('Butt1')
                ),
                TextButton(
                    onPressed: () {
                      },
                    child: Text('Butt2')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
