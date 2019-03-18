import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("xxxxx"),
              accountEmail: Text("xxxx@qq.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new ExactAssetImage("images/head.jpg"),
                ),
              ),
              // decoration: new BoxDecoration(
              //   image: new DecorationImage(
              //     fit: BoxFit.fill,
              //     image: new ExactAssetImage("images/head.jpg"),),),
            ),
            new ListTile(
              title: new Text("识花"),
              trailing: new Icon(Icons.local_florist),
            ),
            new Divider(),
            new ListTile(
              title: new Text("搜索"),
              trailing: new Icon(Icons.search),
            ),
            new Divider(),
            new ListTile(
              title: new Text("设置"),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body:Center(
          child: Text('hello word'),
      )
    );
  }
}