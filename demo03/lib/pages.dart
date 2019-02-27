import 'package:flutter/material.dart';
import 'custome_route.dart';
class FirstPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('firstPage',style:TextStyle(fontSize:36.0)),
        elevation: 0.0,//默认4.0
        leading: Container(),//字居中
      ),
      body: Center(
        child: MaterialButton(
          child:Icon(
            Icons.navigate_next,
            color:Colors.white,
            size:64
          ),
          onPressed:(){
            Navigator.of(context).push(CustomeRoute(SecondPage()));
          } ,
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('secondPage',style:TextStyle(fontSize:36.0)),
        elevation: 0.0,//默认4.0 阴影效果，0就完全融合了
        backgroundColor: Colors.red,
        leading: Container(),//字居中
      ),
      body: Center(
        child: MaterialButton(
          child:Icon(
            Icons.navigate_before,
            color:Colors.white,
            size:64
          ),
          onPressed:(){
            Navigator.of(context).pop();//返回上一页
          } ,
        ),
      ),
    );
  }
}