import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage()
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        // elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print('Menu button is clicked');
        //   },
        // ),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print('Shopping cart button is clicked');
          },
          ),
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print('Search button is clicked');
          }
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/cat2.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/flower3.jpg'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/flower3.jpg'),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: Text('Test Name'),
              accountEmail: Text('areum@myemila.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
                    
              ),
            ),
            ListTile( // 왼쪽 메뉴탭의 메뉴
              leading: Icon(Icons.home,
              color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print('my listTitle');
              },
              trailing: Icon(Icons.add), // 서브메뉴
            ),
            ListTile( // 왼쪽 메뉴탭의 메뉴
              leading: Icon(Icons.add,
                  color: Colors.grey[850]),
              title: Text('Add'),
              onTap: () {
                print('Add');
              },
        //      trailing: Icon(Icons.add), // 서브메뉴
            ),
            ListTile( // 왼쪽 메뉴탭의 메뉴
              leading: Icon(Icons.question_answer,
                  color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A');
              },
              trailing: Icon(Icons.add), // 서브메뉴
            )
          ],
        ),
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: FlatButton(
            child: Text('Show me',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            color: Colors.red,
            onPressed: () {
              Scaffold.of(ctx).showSnackBar(SnackBar(
                content: Text('Hello'),
              ));
            },
          ),
        );
      },

      )
    );
  }
}
