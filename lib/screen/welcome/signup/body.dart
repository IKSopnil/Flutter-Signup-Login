// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_signup/screen/welcome/components/rounded_button.dart';
import 'package:flutter_signup/screen/welcome/signup/background.dart';
import 'package:flutter_signup/screen/welcome/signup/divider.dart';
import 'package:flutter_signup/screen/welcome/signup/field.dart';
import 'package:flutter_signup/screen/welcome/signup/socialicon.dart';
import 'package:flutter_svg/svg.dart';


import '../login/login_screen.dart';

class body_signup extends StatelessWidget {
  final Widget child;
  const body_signup({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return signupbackground(
      child: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: size.height * 0.01),
            Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF00DFC0),
              ),
            ),
            
            ClipRRect(
              borderRadius: BorderRadius.circular(80.0),
              child: Image.asset(
                
                "android/assets/icons/4957412_Mobile-login-Cristina.jpg",
                
                height: size.height * 0.4,
              ),
            ),
            RoundedInputField(
              hintText: 'Email',
              onChanged: (String value) {},
              icon: Icons.person,
              color: Color.fromARGB(255, 255, 253, 253),
            ),
            Rounded_password_field(
              onChanged: (String value) {},
            ),
            Roundedbutton(
              text: "Sign Up",
                  press: () {
                   
                  },
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  color: Color(0xFF385A64)),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    already_have_an_accountcheck(
                      login: false,
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
                    ),
                  ],
                ),
      
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                social_icon(
                  icons_src: "android/assets/icons/facebook.svg",
                  press: (){},
                ),
                 social_icon(
                  icons_src: "android/assets/icons/icons8-instagram.svg",
                  press: (){},
                ),
                 social_icon(
                  icons_src: "android/assets/icons/twitter.svg",
                  press: (){},
                ),
              ],
            ),
             SizedBox(height: size.height * 0.03),
      
          ],
        ),
      ),
    );
  }
}

