import 'package:appathon/components/call.dart';
import 'package:appathon/components/loading.dart';
import 'package:appathon/components/message_location.dart';
import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/drawer.dart';
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
                        'EmerGency\nAlerter'.toUpperCase(),
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
              height: height * 0.45,
              width: width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CallMr()));
                    },
                    child: Container(
                      height: height * 0.1,
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
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MessageIt()));
                    },
                    child: Container(
                      height: height * 0.1,
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
                              'assets/mail.png',
                              height: height * 0.05,
                            ),
                          ),
                          Text(
                            'Message\nLocation'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: height * 0.028,
                                height: 1.04,
                                fontFamily: 'PalanquinDark'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      _getLocation();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loading()));
                    },
                    child: Container(
                      height: height * 0.1,
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
                              'assets/sun.png',
                              height: height * 0.05,
                            ),
                          ),
                          Text(
                            'Get\nweather'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: height * 0.028,
                                height: 1.04,
                                fontFamily: 'PalanquinDark'),
                          ),
                        ],
                      ),
                    ),
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

//boxShadow: [
//BoxShadow(
//color: Colors.grey.withOpacity(0.5),
//spreadRadius: 3,
//blurRadius: 5,
//offset: Offset(0, 3), // changes position of shadow
//),
//],
