import 'package:flutter/material.dart';
import 'package:appathon/support/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      drawer: AppDrawer(),
      body: Stack(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("welcome to disaster managment"),
            ),
            Container(
                child: Column(
              children: <Widget>[
                Container( child:Text("")),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ))
          ],
        ),
      ]),
    );
  }
}
