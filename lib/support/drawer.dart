import 'package:appathon/components/call.dart';
import 'package:appathon/components/home_screen.dart';
import 'package:appathon/components/message_location.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.redAccent),
              height: height * 0.24,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/playstore.png',
                    height: height * 0.10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Emergency\nAlerter'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'PalanquinDark',
                        color: Colors.white,
                        fontSize: height * 0.03,
                        height: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'HOME',
                    style: TextStyle(
                      fontFamily: 'PalanquinDark',
                      fontSize: height * 0.03,
                      color: Colors.redAccent,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CallMr()));
                  },
                  child: Text(
                    'CALL EMERGENCY',
                    style: TextStyle(
                      fontFamily: 'PalanquinDark',
                      fontSize: height * 0.03,
                      color: Colors.redAccent,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MessageIt()));
                  },
                  child: Text(
                    'MESSAGE ALERT',
                    style: TextStyle(
                      fontFamily: 'PalanquinDark',
                      fontSize: height * 0.03,
                      color: Colors.redAccent,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
