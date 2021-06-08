import 'package:amulet_mobile/amulets/amulet1.dart';
import 'package:amulet_mobile/amulets/amulet2.dart';
import 'package:amulet_mobile/amulets/amulet3.dart';
import 'package:amulet_mobile/amulets/amulet4.dart';
import 'package:amulet_mobile/amulets/amulet5.dart';
import 'package:amulet_mobile/amulets/amulet6.dart';
import 'package:amulet_mobile/amulets/amulet7.dart';
import 'package:amulet_mobile/amulets/amulet8.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xFFFFC700),
    Color(0xFFFFC700),
    Color(0xFFFEDA5B),
    Color(0xFFFEE075),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFFFEDA5B), //change your color here
          ),
          title: Text(
            'ВЫБРАТЬ АМУЛЕТ',
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.1,
          centerTitle: true),
      extendBodyBehindAppBar: true,
      body: Center(
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
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet1())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame1.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "ЛЮБОВНЫЙ АМУЛЕТ".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet2())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame2.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "АМУЛЕТ\n ПО ЖИЗНЕ ФАРТИТ".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet3())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame3.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "ДЕНЕЖНЫЙ АМУЛЕТ".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet4())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame4.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "SEXY CHAKRA".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet5())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame5.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "GORGEOUS GIRL".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet6())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame6.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "CASH FLOW".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet7())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame7.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "НОВОГОДНИЙ АМУЛЕТ".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11),
                height: 100,
                width: 327,
                child: MaterialButton(
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Amulet8())),
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 70,
                          width: 77,
                          child: Image(image: AssetImage('assets/Frame8.jpg'))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 153,
                        child: Text(
                          "УДАЧНАЯ ПРОДАЖА\n НЕДВИЖИМОСТИ".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFC700),
                              Color(0xFFFFC700),
                              Color(0xFFFEDA5B),
                              Color(0xFFFEE075),
                            ],
                            // stops: [0.0, 0.33, 0.65, 1.0],
                          ),
                          // shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/plus.svg",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
