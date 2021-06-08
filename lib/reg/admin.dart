import 'package:amulet_mobile/amulets/amulet3.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class Admin extends StatefulWidget {
  const Admin({Key key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

double _currentSliderValue = 0;

/// This is the private State class that goes with MyStatefulWidget.
class _AdminState extends State<Admin> {
  Color _iconColor1 = Colors.white;
  Color _iconColor2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('АДМИНИСТРАТОР'),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('АДМИНИСТРАТОР',
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 30)),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.check_box, color: _iconColor1),
                      onPressed: () {
                        setState(() {
                          if (_iconColor1 == Colors.white) {
                            _iconColor1 = Colors.yellow;
                          } else {
                            _iconColor1 = Colors.white;
                          }
                        });
                      },
                    ),
                    Text('ДОБАВИТЬ НОВОГОДНИЙ АМУЛЕТ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.check_box, color: _iconColor2),
                      onPressed: () {
                        setState(() {
                          if (_iconColor2 == Colors.white) {
                            _iconColor2 = Colors.yellow;
                          } else {
                            _iconColor2 = Colors.white;
                          }
                        });
                      },
                    ),
                    Text('ДОБАВИТЬ CASH FLOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('ДОБАВИТЬ СКИДКУ',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                Text('$_currentSliderValue %',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                SizedBox(
                  height: 30,
                ),
                Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.white,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
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
                      child: Text('ПРИМЕНИТЬ'),
                      padding: EdgeInsets.all(8.0),
                      onPressed: () => ({
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Amulet3())),
                      }),
                    )),
              ],
            ),
          ),
        ));
  }
}
