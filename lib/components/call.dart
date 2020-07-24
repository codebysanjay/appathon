import 'package:appathon/components/drawer.dart';
import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/call_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallMr extends StatefulWidget {
  @override
  _CallMrState createState() => _CallMrState();
}

class _CallMrState extends State<CallMr> {
  void _launchCaller(int number) async {
    var url = 'tel:${number.toString()}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: buildAppBar(),
      drawer: AppDrawer(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Tap to call on\nEmergency situation'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CallCard(
                    onTap: () {
                      _launchCaller(108);
                    },
                    width: width,
                    height: height,
                    image: 'assets/cross.png',
                    name: 'AMBULANCE',
                  ),
                  CallCard(
                    onTap: () {
                      _launchCaller(101);
                    },
                    width: width,
                    height: height,
                    image: 'assets/fire.png',
                    name: 'FIRE',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CallCard(
                    onTap: () {
                      _launchCaller(100);
                    },
                    width: width,
                    height: height,
                    image: 'assets/policeman.png',
                    name: 'POLICE',
                  ),
                  CallCard(
                    onTap: () {
                      _launchCaller(1077);
                    },
                    width: width,
                    height: height,
                    image: 'assets/disaster.png',
                    name: 'DISASTER',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CallCard(
                    onTap: () {
                      _launchCaller(1056);
                    },
                    width: width,
                    height: height,
                    image: 'assets/virus.png',
                    name: 'COVID-19',
                  ),
                  CallCard(
                    onTap: () {
                      _launchCaller(1093);
                    },
                    width: width,
                    height: height,
                    image: 'assets/costal.png',
                    name: 'COASTAL\nPOLICE',
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  _launchCaller(112);
                },
                child: Container(
                  height: height * 0.08,
                  width: width * 0.82,
                  child: Center(
                    child: Text(
                      'GENERAL HELPLINE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
