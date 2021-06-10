import 'package:amulet_mobile/bottom/matrix/matrixtable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class Amulet7 extends StatefulWidget {
  @override
  _Amulet7State createState() => _Amulet7State();
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xFFFFC700),
    Color(0xFFFFC700),
    Color(0xFFFEDA5B),
    Color(0xFFFEE075),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class _Amulet7State extends State<Amulet7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Color(0xFFFEDA5B), //change your color here
            ),
            title: Text(
              'НОВОГОДНИЙ АМУЛЕТ',
              style: TextStyle(
                  fontFamily: 'TrajanPro3Regular',
                  foreground: Paint()..shader = linearGradient),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.1,
            centerTitle: true),
        extendBodyBehindAppBar: true,
        body: WillPopScope(
          onWillPop: () async {
            Navigator.pop(context, false);
            return false;
          },
          child: Center(
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
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Table(),
                ],
              ),
            ),
          ),
        ));
  }
}

class Table extends StatefulWidget {
  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.blueAccent),
                  height: 330,
                  width: 250,
                  // color: Colors.red,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image(image: AssetImage('images/Frame7.png')))),
              Positioned(
                  top: 40,
                  left: 60,
                  child: Text(
                    "2021 116 3134205".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'TrajanPro3Regular',
                      fontSize: 15.0,
                      foreground: Paint()..shader = linearGradient,
                    ),
                  )),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
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
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/Vector.svg",
                        color: Colors.black,
                      ),
                      onPressed: () => ({
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Navigation())),
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'SEXY CHAKRA',
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
          Text(
            'Информация об амулете',
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
          Text(
            'Информация об амулете',
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
          Text(
            'Информация об амулете',
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
          Container(
              margin: EdgeInsets.all(11),
              height: 43,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
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
              child: MaterialButton(
                height: 100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.0),
                ),
                textColor: Colors.black,
                child: Text(
                  'КУПИТЬ АМУЛЕТ',
                  style: TextStyle(
                    fontFamily: 'Khula-Regular',
                  ),
                ),
                padding: EdgeInsets.all(8.0),
                onPressed: () => ({
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MatrixTable())),
                }),
              )),
        ],
      ),
    );
  }
}
