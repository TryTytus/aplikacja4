import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'strona3.dart';
import 'FirstScreen.dart';
import 'Strona2.dart';
void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor:  Colors.white,
        fontFamily: 'Merriweather',
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override

  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex=0;
  final tabs = [
FirstScreen(),
Strona2(),
    strona3(),
  ];
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(length: 3,
      child:Scaffold(
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(70),
        child:new AppBar(
        title:Container(
          margin: const EdgeInsets.only(top: 25.0),
        child:new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
new Icon(
    Icons.library_books,
  ),
        SizedBox(
          width: 20.0,
          height: 20.0,
        ),

            new Text("Gazetka szkolna"
              ),
          ],
          ),
        ),
        ),
      ),
      body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home,
        color: Colors.black26,),
            title:Text('wpisy',style: TextStyle(
              color: Colors.black26,
            ),),
      ),
          BottomNavigationBarItem(
            title: Text('nowy post',style: TextStyle(
              color: Colors.black26,
            ),),
            icon: Icon(Icons.add_circle,
            color: Colors.black26,),),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle,
        color: Colors.black26,),
        title: Text('konto',style: TextStyle(
          color: Colors.black26,

        ),),
          ),
      ],
onTap: (index) {
          setState(() {
_currentindex = index;
          });
},
        currentIndex: _currentindex,
      ),
    ),
      );

  }
}