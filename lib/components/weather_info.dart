import 'dart:convert';

import 'package:appathon/support/appbar.dart';
import 'package:appathon/support/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const apiKey = 'ab172d3fb23750e1ab4123e4e840cdd5';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  void initState() {
    super.initState();
    getWeather();
  }

  double temp;
  var humidity;
  var windSpeed;
  var description;

  void getWeather() async {
    http.Response response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=55&lon=122&appid=$apiKey');
    var results = jsonDecode(response.body);
    setState(() {
      temp = results['main']['temp'];
      humidity = results['main']['humidity'];
      windSpeed = results['wind']['speed'];
      description = results['weather'][0]['main'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: buildAppBar(),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: height * 0.3,
                width: width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      temp != null
                          ? (temp - 273.15).toStringAsFixed(0) + "\u2103"
                          : 'Loading',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Temperature'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.3,
                width: width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      windSpeed != null
                          ? (windSpeed).toString() + " M/S"
                          : 'Loading',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'Wind\nSpeed'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: height * 0.3,
                width: width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      description != null
                          ? description.toString().toUpperCase()
                          : 'Loading',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'Weather'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.3,
                width: width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      humidity != null ? humidity.toString() + "%" : 'Loading',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                    Text(
                      'Humidity'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
