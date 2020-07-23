import 'package:appathon/components/call.dart';
import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CallMr()));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Text("Xyx"),
                  ),
                ),
                FlatButton(
                  child: Text('weather'),
                  onPressed: () {},
                ),
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
