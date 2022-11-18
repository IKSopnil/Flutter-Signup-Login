// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';
import 'package:flutter_signup/screen/welcome/components/rounded_button.dart';

import 'package:flutter_signup/screen/welcome/login/components/login_background.dart';
import 'package:flutter_signup/screen/welcome/login/components/rounded_input_field.dart';
import 'package:flutter_signup/screen/welcome/login/components/roundedpasswordfield.dart';
import 'package:flutter_signup/screen/welcome/signup/signup_screen.dart';

import 'alreadyhaveanaccount.dart';

// ignore: camel_case_types
class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Login_Background(
        size: size,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.05),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 43, 150, 199)),
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(100.0), //add border radius
                child: Image.asset(
                  "android/assets/images/12085707_20944201.jpg",
                  height: 300.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
              ),

              // Image.asset(
              //   "android/assets/images/12085707_20944201.jpg",
              //   height: 300,
              //   width: 500,
              // ),
              RoundedInputField(
                hintText: 'Your Email',
                onChanged: (String value) {},
                icon: Icons.person, color: Color.fromARGB(255, 43, 150, 199),
              ),
              Rounded_password_field(
                onChanged: (String value) {},
              ),
              SizedBox(height: size.height * 0.01),
              Roundedbutton(
                text: "Login",
                press: () {},
                color: Color.fromARGB(255, 43, 150, 199),
                textColor: Color.fromARGB(255, 255, 255, 255),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  already_have_an_accountcheck(
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
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.096),
            ]));
  }
}
