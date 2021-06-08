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
            elevation: 0.0,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            width: 180,
            height: 180,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.check_box),
                  onPressed: () => (0),
                ),
                Center(
                  child: Container(
                    child: Text(
                      'Таблица',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
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
