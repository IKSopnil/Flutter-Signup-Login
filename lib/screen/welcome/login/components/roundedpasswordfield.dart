// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';
import 'package:flutter_signup/screen/welcome/login/components/text_field_container.dart';



class Rounded_password_field extends StatelessWidget {
  final ValueChanged<String> onChanged ;
  const Rounded_password_field({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Textfieldcontainer(
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
      decoration: InputDecoration(
        hintText: "Password",
          icon: Icon(
            Icons.lock,
            color:Color.fromARGB(255, 255, 255, 255) ,
          ),
          suffixIcon: Icon(Icons.visibility, color:  Color.fromARGB(255, 255, 255, 255)
          ),
          border: InputBorder.none),
    ));
  }
}
