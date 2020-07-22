import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCard extends StatefulWidget {
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
  _CallCardState createState() => _CallCardState();
}

class _CallCardState extends State<CallCard> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onTap,
      child: Container(
        width: widget.width * 0.35,
        height: widget.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Image.asset(widget.image),
              height: widget.height * 0.1,
            ),
            Text(
              widget.name,
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
