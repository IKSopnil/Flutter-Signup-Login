import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';
import 'package:flutter_signup/screen/welcome/welcome_screen.dart';


void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Authentication',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // ignore: prefer_const_constructors
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      // ignore: prefer_const_constructors
      home: welcomescreen(),
    );
  }
}
