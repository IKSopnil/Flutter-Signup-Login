// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';



class already_have_an_accountcheck extends StatelessWidget {
  final bool login;
  final  press;
  const already_have_an_accountcheck({
    Key? key,
    this.login=true,
     this.press,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         login ? "Dont't have an account?":"Already have an account?",
          style: TextStyle(color: Color.fromARGB(255, 43, 150, 199)),
        ),
        GestureDetector(
            onTap: press,
            child: Text(
              login? "Sign Up":"Sign In",
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 150, 199), fontWeight: FontWeight.bold))),
      ],
    );
  }
}
