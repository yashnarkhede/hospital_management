import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/Images/Artboard 1.png",
                width: size.width * 1.6,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/Images/Artboard 2.png",
                width: size.width * 1,
              )),
          child,
        ],
      ),
    );
  }
}
