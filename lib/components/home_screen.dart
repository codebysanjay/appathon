import 'package:flutter/material.dart';
import 'package:appathon/support/drawer.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
    );
  }
}
