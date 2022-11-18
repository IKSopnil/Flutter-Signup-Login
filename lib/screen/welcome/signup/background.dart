import 'package:flutter/material.dart';


class signupbackground extends StatelessWidget {
  final Widget child;

  const signupbackground({
    Key? key,
   
    required this.child,
  }) : super(key: key);

  
 

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                "android/assets/icons/blob-haikei (1).png",
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "android/assets/icons/blob-haikei.png",
                scale: 0.8,
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
