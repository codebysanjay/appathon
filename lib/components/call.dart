import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/call_card.dart';
import 'package:appathon/support/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallMr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: buildAppBar(),
      drawer: AppDrawer(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CallCard(
                    onTap: () {},
                    width: width,
                    height: height,
                    image: 'assets/cross.png',
                    name: 'AMBULANCE',
                  ),
                  CallCard(
                    onTap: () {},
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
                    onTap: () {},
                    width: width,
                    height: height,
                    image: 'assets/policeman.png',
                    name: 'POLICE',
                  ),
                  CallCard(
                    onTap: () {},
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
                    onTap: () {},
                    width: width,
                    height: height,
                    image: 'assets/virus.png',
                    name: 'COVID-19',
                  ),
                  CallCard(
                    onTap: () {},
                    width: width,
                    height: height,
                    image: 'assets/costal.png',
                    name: 'COASTAL\nPOLICE',
                  ),
                ],
              ),
              Container(
                height: height * 0.08,
                width: width * 0.8,
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
