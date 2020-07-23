import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/drawer.dart';
import 'package:flutter/material.dart';

class MessageIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: buildAppBar(),
      drawer: AppDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Container(
              height: height * 0.08,
              width: width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      'assets/phone.png',
                      height: height * 0.05,
                    ),
                  ),
                  Text(
                    'EMERGENCY\nCALL',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: height * 0.028,
                        height: 1.03,
                        fontFamily: 'PalanquinDark'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
