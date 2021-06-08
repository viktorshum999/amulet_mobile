import 'package:amulet_mobile/amulets/amulet3.dart';
import 'package:amulet_mobile/reg/login.dart';
import 'package:amulet_mobile/reg/reg.dart';
import 'package:flutter/material.dart';

class Lang extends StatefulWidget {
  @override
  _LangState createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(11),
                height: 43,
                width: 87,
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
                    'ВХОД',
                    style: TextStyle(
                      fontFamily: 'Khula-Regular',
                    ),
                  ),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyStatefulWidget())),
                  }),
                )),
            SizedBox(
              height: 30,
            ),
            Text('или',
                style: TextStyle(
                  fontFamily: 'Khula-Regular',
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 8.0,
                      color: Color(0xFF2F2E60),
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
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
                    'РЕГИСТРАЦИЯ',
                    style: TextStyle(
                      fontFamily: 'Khula-Regular',
                    ),
                  ),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () => ({
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyStatefulWidget2())),
                  }),
                )),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(11),
                    height: 37,
                    width: 74,
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
                        'РУС',
                        style: TextStyle(
                          fontFamily: 'Khula-Regular',
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      onPressed: () => ({
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Amulet3())),
                      }),
                    )),
                Container(
                    margin: EdgeInsets.all(11),
                    height: 37,
                    width: 74,
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
                        'ENG',
                        style: TextStyle(
                          fontFamily: 'Khula-Regular',
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      onPressed: () => ({
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Amulet3())),
                      }),
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
