import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String name;
  final Function onPress;

  const DrawerButton({
    Key key,
    @required this.height,
    this.name,
    this.onPress,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: FlatButton(
          onPressed: onPress,
          child: Text(
            name,
            style: TextStyle(
              fontFamily: 'PalanquinDark',
              fontSize: height * 0.03,
              color: Colors.redAccent,
            ),
          )),
    );
  }
}
