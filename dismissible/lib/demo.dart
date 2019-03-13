import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list;

  @override
  void initState() {
    super.initState();
    list = List.generate(
      10,
      (index) => '标签：${index}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('左滑删除demo'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(list[index]),
            background: Container(
              color: Colors.blue,
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${list[index]}    = >   已删除'),
                    action: SnackBarAction(
                      onPressed: () {},
                      label: '确定',
                    ),
                  ),
                );
                list.removeAt(index);
              });
            },
            child: ListTile(
              title: Text('${list[index]}'),
            ),
          );
        },
      ),
    );
  }
}