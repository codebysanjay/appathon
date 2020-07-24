import 'package:appathon/components/call.dart';
import 'package:appathon/components/drawer.dart';
import 'package:appathon/components/message_location.dart';
import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String lat = "";
String lon = "";

class _HomeState extends State<Home> {
  void _getLocation() async {
    final position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      lat = '${position.latitude}';
      lon = '${position.longitude}';
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.1, right: 10),
                        child: Image.asset(
                          'assets/embed.png',
                          height: height * 0.08,
                        ),
                      ),
                      Text(
                        'Emergency\nAlerter'.toUpperCase(),
                        style: TextStyle(
                          height: 1.1,
                          color: Colors.redAccent,
                          fontFamily: 'PalanquinDark',
                          fontSize: width * 0.075,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.4,
              width: width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  HomeButton(
                    height: height,
                    width: width,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CallMr()));
                    },
                    name: 'Emergency\ncall'.toUpperCase(),
                    image: 'assets/phone.png',
                  ),
                  HomeButton(
                    height: height,
                    width: width,
                    onPressed: () {
                      _getLocation();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MessageIt()));
                    },
                    name: 'message\nlocation'.toUpperCase(),
                    image: 'assets/mail.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
