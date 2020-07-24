import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String name, image;
  final Function onPressed;

  const HomeButton({
    Key key,
    @required this.height,
    @required this.width,
    this.name,
    this.image,
    this.onPressed,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        height: height * 0.12,
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
                image,
                height: height * 0.05,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.blueGrey[700],
                  fontSize: height * 0.028,
                  height: 1.03,
                  fontFamily: 'PalanquinDark'),
            ),
          ],
        ),
      ),
    );
  }
}
