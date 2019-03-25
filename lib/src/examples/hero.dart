import 'package:flutter/material.dart';
import 'package:flutter_demo_by_thecodingpapa/src/constant/herokeys.dart';

class HeroRoute extends StatefulWidget {
  HeroRoute({Key key}) :super(key: key);

  @override
  State<StatefulWidget> createState() => new _HeroState();

}
class _HeroState extends State<HeroRoute>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(child: Scaffold(
        appBar: AppBar(title: Hero(tag: HERO_DEMO_TITLE, child: Text('Hero Demo')),),
        body: Container(color: Colors.blue,),
      ), onWillPop: _willPop),
    );
  }

  Future<bool> _willPop() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ?? false;
  }

}