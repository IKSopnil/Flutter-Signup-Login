// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          makedivider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Text(
              "Or",
              style: TextStyle(
                color: Color(0xFF385A64),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          makedivider(),
          
        ],
      ),
    );
  }
}

class makedivider extends StatelessWidget {
  const makedivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Divider(
      color: Color(0xFF385A64),
      height: 1.5,
    ));
  }
}
