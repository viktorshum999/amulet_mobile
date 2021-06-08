import 'dart:async';
import 'package:amulet_mobile/reg/lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Lang(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: RadialGradient(
          center: Alignment(0, 0),
          colors: [
            Color(0xFF714AA6),
            Color(0xFF573D86),
            Color(0xFF2F2E60),
            Color(0xFF03103A),
          ],
          radius: 1.0,
          stops: [0.0, 0.33, 0.65, 1.0],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/zv1.svg",
              color: Colors.yellow,
              height: 250,
              width: 250,
            ),
            // Image.asset('image/zv.png'),
            // Text(
            //   "ЗАГРУЗКА...",
            //   style: TextStyle(
            //     fontSize: 50.0,
            //     color: Colors.white,
            //     fontFamily: "Satisfy",
            //   ),
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
