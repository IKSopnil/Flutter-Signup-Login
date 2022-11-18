import 'package:flutter/material.dart';
import 'package:flutter_signup/constant.dart';
import 'package:flutter_svg/svg.dart';

class social_icon extends StatelessWidget {
  final icons_src;
  final press;
  const social_icon({
    Key? key, this.icons_src, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return GestureDetector(
      
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.height * 0.01),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 227, 229, 239)),
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 254, 254, 254),
            ),
            child: SvgPicture.asset(
              icons_src,
              height: 20,
              width: 20,
              color:Color.fromARGB(255, 36, 94, 87),
            ),
          )
        ],
      ),
    );
  }
}
