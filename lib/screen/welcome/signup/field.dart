// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    required Color color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Textfieldcontainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}

class Textfieldcontainer extends StatelessWidget {
  final Widget child;
  const Textfieldcontainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color(0xFFE1E1E1),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class Rounded_password_field extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const Rounded_password_field({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Textfieldcontainer(
        child: TextField(
      obscureText: true,
      onChanged: onChanged,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          suffixIcon:
              Icon(Icons.visibility, color: Color.fromARGB(255, 255, 255, 255)),
          border: InputBorder.none),
    ));
  }
}

class already_have_an_accountcheck extends StatelessWidget {
  final bool login;
  final press;
  const already_have_an_accountcheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          login ? "Dont't have an account?" : "Already have an account?",
          style: TextStyle(color: Color(0xFF385A64)),
        ),
        GestureDetector(
            onTap: press,
            child: Text(login ? "Sign Up" : "Sign In",
                style: TextStyle(
                    color: Color(0xFF385A64), fontWeight: FontWeight.bold))),
      ],
    );
  }
}



