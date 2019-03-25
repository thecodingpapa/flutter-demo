import 'package:flutter/material.dart';
import 'package:flutter_demo_by_thecodingpapa/src/constant/herokeys.dart';
import 'examples/hero.dart';

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo List'),
                centerTitle: true,
                background: Image.asset('assets/flutter.png'),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HeroRoute()));
                  },
                  child: Hero(
                    tag: HERO_DEMO_TITLE,
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Hero Widget',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  height: 250,
                ),
                Container(
                  color: Colors.black,
                  height: 250,
                ),
                Container(
                  color: Colors.blue,
                  height: 250,
                ),
                Container(
                  color: Colors.yellow,
                  height: 250,
                ),
                Container(
                  color: Colors.green,
                  height: 250,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
