import 'package:flutter/material.dart';
import 'package:appathon/support/appbar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Text(
            "An  app developed for a emergency situation that we are facing",
            textAlign: TextAlign.center),
      ),
    );
  }
}
