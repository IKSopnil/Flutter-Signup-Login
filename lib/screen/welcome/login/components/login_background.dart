// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_Background extends StatelessWidget {
  const Login_Background({required this.size, this.child});

  final Size size;
  final child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     child: Image.asset(
          //       "android/assets/images/blob-haikei.png",
          //       width: size.width * .9,
          //     )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "android/assets/images/blob-haikei (1).png",
                width: size.width * .9,
              )),
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                "android/assets/images/log corner.png",
                width: size.width * .8,
              )),
           child,
          
        ],
      ),
    );
  }
}
