import 'package:amulet_mobile/bottom/matrix/matrixtable.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MatrixData extends StatefulWidget {
  const MatrixData({Key key}) : super(key: key);

  @override
  State<MatrixData> createState() => _MatrixDataState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MatrixDataState extends State<MatrixData> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xFFFFC700),
      Color(0xFFFFC700),
      Color(0xFFFEDA5B),
      Color(0xFFFEE075),
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
              color: Color(0xFFFEDA5B), //change your color here
            ),
            title: Text(
              'РАССЧИТАТЬ МАТРИЦУ',
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
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                IconButton(
                  icon: Icon(Icons.check_box),
                  onPressed: () => (0),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'ДОСТУПНО БЕСПЛАТНО\n ПОСЛЕ ПОКУПКИ\n АМУЛЕТА',
                    style: TextStyle(
                        fontFamily: 'TrajanPro3Regular',
                        foreground: Paint()..shader = linearGradient),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Информация о матрице',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'TrajanPro3Regular',
                      foreground: Paint()..shader = linearGradient),
                ),
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
                        'РАССЧИТАТЬ',
                        style: TextStyle(
                          fontFamily: 'Khula-Regular',
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      onPressed: () => ({
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MatrixTable())),
                      }),
                    )),
              ],
            ),
          ),
        ));
  }
}
