import 'package:appathon/components/weather_info.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String latitude = "";
  String longitude = "";

  void geoLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    setState(() {
      this.latitude = '${position.latitude}';
      this.longitude = '${position.longitude}';
    });
  }

  @override
  void initState() {
    geoLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Weather(),
    );
  }
}
