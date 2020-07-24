import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      "SERVICES",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
    ),
    backgroundColor: Colors.blueGrey[700],
    elevation: 0,
  );
}
