import 'dart:io';

import 'package:appathon/components/drawer.dart';
import 'package:appathon/support/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class MessageIt extends StatefulWidget {
  @override
  _MessageItState createState() => _MessageItState();
}

class _MessageItState extends State<MessageIt> {
  String _location = '';

  void getLocation() async {
    final position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _location = '${position.latitude},${position.longitude}';
    });
  }

  sendMessage(String message) async {
    if (Platform.isAndroid) {
      //FOR Android
      var url = 'sms:?body=$message';
      await launch(url);
    } else if (Platform.isIOS) {
      //FOR IOS
      var url = 'sms:&body=$message';
    }
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: buildAppBar(),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: FlatButton(
                onPressed: () {
                  if (_location == null) {
                    throw 'Fetching Data';
                  } else {
                    sendMessage(
                        'It\'s getting Fire Here. I\'m at this location $_location . \n Help Me! ');
                  }
                },
                child: Container(
                  height: height * 0.08,
                  width: width * 0.75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          'assets/fire.png',
                          height: height * 0.05,
                          color: Colors.redAccent,
                        ),
                      ),
                      Text(
                        'Fire\nEmergency'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: height * 0.028,
                          height: 1.03,
                          fontFamily: 'PalanquinDark',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: FlatButton(
                onPressed: () {
                  if (_location == null) {
                    throw 'Fetching Data';
                  } else {
                    sendMessage(
                        'The Earth is shaking Here. I\'m at this location  $_location . \n Help Me! ');
                  }
                },
                child: Container(
                  height: height * 0.08,
                  width: width * 0.75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          'assets/ground.png',
                          height: height * 0.05,
                          color: Colors.redAccent,
                        ),
                      ),
                      Text(
                        'Earthquake'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: height * 0.028,
                          height: 1.03,
                          fontFamily: 'PalanquinDark',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: FlatButton(
                onPressed: () {
                  if (_location == null) {
                    throw 'Fetching Data';
                  } else {
                    sendMessage(
                        'I\'m met an accident. I\'m at this location $_location . \n Help Me ');
                  }
                },
                child: Container(
                  height: height * 0.08,
                  width: width * 0.75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          'assets/accident.png',
                          height: height * 0.05,
                          color: Colors.redAccent,
                        ),
                      ),
                      Text(
                        'Accident'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: height * 0.028,
                          height: 1.03,
                          fontFamily: 'PalanquinDark',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
