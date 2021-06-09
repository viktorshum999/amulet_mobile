import 'package:flutter/material.dart';

class MatrixTable extends StatefulWidget {
  @override
  _MatrixTableState createState() => _MatrixTableState();
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xFFFFC700),
    Color(0xFFFFC700),
    Color(0xFFFEDA5B),
    Color(0xFFFEE075),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class _MatrixTableState extends State<MatrixTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'РАСЧЕТ МАТРИЦЫ',
              style: TextStyle(
                  fontFamily: 'TrajanPro3Regular',
                  foreground: Paint()..shader = linearGradient),
            ),
            iconTheme: IconThemeData(
              color: Color(0xFFFEDA5B), //change your color here
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
                children: [
                  SizedBox(height: 50),
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
          Container(
            padding: const EdgeInsets.all(10),
            // width: 250,
            // height: 250,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xFFefe6dd)),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Дата рождения: 23.06.1999',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          color: Colors.black,
                          // foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Доп.числа: 39,12,35,8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Число судьбы: 3',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Темперамент: 11',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Характер\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Здоровье\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Удача\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Цель: 11',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Энергия\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Логика\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Долг\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Семья: 11',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Интерес\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Труд\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.red),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          // width: 75,
                          // height: 100,
                          child: Text(
                            'Память\n 11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'TrajanPro3Regular',
                              foreground: Paint()..shader = linearGradient,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Привычки: 11',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      // width: 75,
                      // height: 100,
                      child: Text(
                        'Быт\n 11',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'TrajanPro3Regular',
                          foreground: Paint()..shader = linearGradient,
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
                        ),
                      ),
                    ),
                  ],
                )
                // IconButton(
                //   icon: Icon(Icons.check_box),
                //   onPressed: () => (0),
                // ),
                // Center(
                //   child: Container(
                //     child: Text(
                //       'Таблица',
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 30,
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Информация о матрице ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
        ],
      ),
    );
  }
}
