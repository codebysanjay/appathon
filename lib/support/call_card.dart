import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  final String image, name;
  final Function onTap;

  const CallCard({
    Key key,
    @required this.width,
    @required this.height,
    @required this.image,
    @required this.name,
    @required this.onTap,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * 0.35,
        height: height * 0.2,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Image.asset(image),
              height: height * 0.1,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
