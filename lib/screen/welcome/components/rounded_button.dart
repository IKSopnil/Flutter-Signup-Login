// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class Roundedbutton extends StatelessWidget {
  final String text;
  final press;
  
  final Color color, textColor;
  const Roundedbutton({
    Key? key,
    required this.text,
  
    required this.color,
    required this.textColor,  this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // this size is total height and,
    return Container(
      margin: const EdgeInsets.all(13.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            backgroundColor: color,
          ),
        
          
          onPressed: press ,
          child: Text(text, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}


