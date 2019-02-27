import 'package:flutter/material.dart';
import './pages/airplay_screen.dart';
import './pages/email_sceen.dart';
import './pages/pages_screen.dart';
import './pages/home_screen.dart';

// 动态wiget
class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();


  @override//重写初始化状态方法
  void initState(){
    // ..谁用返回的是谁
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // 脚手架
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color:_BottomNavigationColor
            ),
            title: Text(
              "home",
              style:TextStyle(
                color:_BottomNavigationColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.email,
              color:_BottomNavigationColor
            ),
            title: Text(
              "email",
              style:TextStyle(
                color:_BottomNavigationColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.pages,
              color:_BottomNavigationColor
            ),
            title: Text(
              "pages",
              style:TextStyle(
                color:_BottomNavigationColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.airplay,
              color:_BottomNavigationColor
            ),
            title: Text(
              "airplay",
              style:TextStyle(
                color:_BottomNavigationColor
              )
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          // 设置状态
          setState((){
            _currentIndex = index;
          });
        },
      ),
    );
  }
}