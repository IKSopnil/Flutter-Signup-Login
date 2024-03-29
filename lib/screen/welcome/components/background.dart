import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key, required this.child, required Size size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "android/assets/images/main_top.png",
                width: size.width * .3,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "android/assets/images/main_bottom.png",
                width: size.width * .2,
              )),
         child,
        ],
      ),
    );
  }
}
