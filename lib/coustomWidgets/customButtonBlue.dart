import 'package:flutter/material.dart';

class CardText extends StatefulWidget {
  CardText(this.text) ;
  String text;
  @override
  _CardTextState createState() => _CardTextState();
}

class _CardTextState extends State<CardText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.blue,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              widget.text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
