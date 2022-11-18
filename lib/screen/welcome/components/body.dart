// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, duplicate_import

import 'package:flutter/material.dart';
import 'package:flutter_signup/screen/welcome/components/background.dart';
import 'package:flutter_signup/screen/welcome/components/rounded_button.dart';

import 'package:flutter_svg/svg.dart';

import '../login/login_screen.dart';
import '../signup/signup_screen.dart';

// ignore: camel_case_types
class body extends StatelessWidget {
  const body();

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // this size is total height and width size
    return Background(
      size: size,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Text(
              "WELCOME TO SP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "android/assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            Roundedbutton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                textColor: Color.fromARGB(255, 255, 255, 255),
                color: Color.fromARGB(255, 111, 60, 122)),
            Roundedbutton(
              text: "SIGN UP",
              press: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return signup_screen();
                          },
                        ),
                      );
              },
              textColor: Color.fromARGB(255, 255, 255, 255),
              color: Color.fromARGB(255, 142, 41, 193),
            ),
          ],
        ),
      ),
    );
  }
}
