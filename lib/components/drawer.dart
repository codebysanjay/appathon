import 'package:appathon/components/call.dart';
import 'package:appathon/components/home_screen.dart';
import 'package:appathon/components/message_location.dart';
import 'package:appathon/support/drawer_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey[700]),
            height: height * 0.26,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
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
          ),
          DrawerButton(
            height: height,
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            name: 'HOME',
          ),
          DrawerButton(
            height: height,
            onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CallMr()));
            },
            name: 'EMERGENCY CALL',
          ),
          DrawerButton(
            height: height,
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageIt()));
            },
            name: 'MESSAGE ALERT',
          ),
          DrawerButton(
            height: height,
            onPress: () {
              showDialog(
                context: context,
                child: AlertDialog(
                  title: Text('GUIDE'),
                  content: Text(
                      'Turn on Location Service before using the application.'),
                  actions: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'))
                  ],
                ),
              );
            },
            name: 'GUIDE',
          ),
          DrawerButton(
            height: height,
            onPress: () {
              showAboutDialog(
                context: context,
                applicationName: 'EMERGENCY\nALERTER',
                applicationVersion: '\n1.0.0\n',
                children: [
                  Text(
                    'An  app developed for a emergency situation that we are facing.\n Developed as part of IEEE Appathon'
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                  ),
                ],
                applicationIcon: Image.asset(
                  'assets/playstore.png',
                  height: height * 0.08,
                ),
              );
            },
            name: 'ABOUT',
          ),
        ],
      ),
    );
  }
}
