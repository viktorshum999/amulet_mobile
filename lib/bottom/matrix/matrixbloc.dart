import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Matrix extends StatefulWidget {
  @override
  _MatrixState createState() => _MatrixState();
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xFFFFC700),
    Color(0xFFFFC700),
    Color(0xFFFEDA5B),
    Color(0xFFFEE075),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class _MatrixState extends State<Matrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'РАССЧИТАТЬ МАТРИЦУ',
            style: TextStyle(
                fontFamily: 'TrajanPro3Regular',
                foreground: Paint()..shader = linearGradient),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFFFEDA5B), //change your color here
          ),
        ),
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
                BlocMatrix(),
              ],
            ),
          ),
        ));
  }
}

class BlocMatrix extends StatefulWidget {
  @override
  _BlocMatrixState createState() => _BlocMatrixState();
}

class _BlocMatrixState extends State<BlocMatrix> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 180,
        height: 180,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.access_time,
                  size: 25.0,
                ),
              ),

              onPressed: () => (0),
              // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //   builder: (context) => MyStatefulWidget(),
              // ))
            ),
            Center(
              child: Container(
                child: Text(
                  'ДОСТУПНО БЕСПЛАТНО ПОСЛЕ ПОКУПКИ АМУЛЕТА ',
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
    );
  }
}
