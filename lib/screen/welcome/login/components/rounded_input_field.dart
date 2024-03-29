import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';
import 'package:flutter_signup/screen/welcome/login/components/text_field_container.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  
  const RoundedInputField({
    Key? key,  required this.hintText,  this.icon=Icons.person,  required this.onChanged, required Color color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Textfieldcontainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color:  Color.fromARGB(255, 255, 255, 255),
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
