import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton({Key key}) : super(key: key);
  
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool onBotton = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (onBotton == false)
            onBotton = true;
          else
            onBotton = false;
        });
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: 
              onBotton ?
              Colors.blue:
              Colors.grey),
            ),
            height: 24,
            width: 24,
          ),

          onBotton?
          Positioned(
            
            left: 0,
            child: Container(
                height: 24,
                width: 16,
                decoration: BoxDecoration(color:
                onBotton ?
              Colors.blue: Colors.grey)),
          ):
          Positioned(
            
            right: 0,
            child: Container(
                height: 24,
                width: 16,
                decoration: BoxDecoration(color:
                onBotton ?
              Colors.blue: Colors.grey)),
          )
           ,
        ],
      ),
    );
  }
}
