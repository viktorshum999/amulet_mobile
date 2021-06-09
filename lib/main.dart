import 'package:amulet_mobile/bottom/1myamulets/myamulets.dart';
import 'package:amulet_mobile/bottom/choose/choose.dart';
import 'package:amulet_mobile/bottom/matrix/matrixdata.dart';
import 'package:flutter/material.dart';
import 'Splashscreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blur_bottom_bar/blur_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      // theme: ThemeData(
      //   primarySwatch: Colors.indigo,
      // ),
      home: Splashscreen(),
    );
  }
}

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    MyAmulets(),
    Choose(),
    MatrixData(),
  ];

  void _onItemTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      extendBody: true,
      bottomNavigationBar:
          // Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          //       boxShadow: [
          //         BoxShadow(
          //             color: Colors.black38, spreadRadius: 3, blurRadius: 10),
          //       ],
          //     ),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(30.0),
          //         topRight: Radius.circular(30.0),
          //       ),
          //       child: BottomNavigationBar(
          //         backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
          //         elevation: 10.0,
          //         items: <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Container(
          //     width: 30,
          //     height: 30,
          //     child: SvgPicture.asset(
          //       "assets/Union1.svg",
          //       color: Color(0xFFFEDA5B),
          //     ),
          //   ),
          //   label: '     МОИ\nАМУЛЕТЫ',
          // ),
          // BottomNavigationBarItem(
          //     icon: Container(
          //       width: 30,
          //       height: 30,
          //       child: SvgPicture.asset(
          //         "assets/Union2.svg",
          //         color: Color(0xFFFEDA5B),
          //       ),
          //     ),
          //     label: 'ВЫБРАТЬ\n АМУЛЕТ'),
          // BottomNavigationBarItem(
          //     icon: Container(
          //       width: 30,
          //       height: 30,
          //       child: SvgPicture.asset(
          //         "assets/Union3.svg",
          //         color: Color(0xFFFEDA5B),
          //       ),
          //     ),
          //     label: 'РАССЧИТАТЬ\n   МАТРИЦУ'),
          //         ],
          //         currentIndex: _selectedIndex,
          //         selectedItemColor: Color(0xFFFEDA5B),
          //         onTap: _onItemTab,
          //       ),
          //     ))
          Stack(
        children: <Widget>[
          _widgetOptions.elementAt(_selectedIndex),
          BlurBottomView(
            showSelectedLabels: true,
              showUnselectedLabels: true,
              bottomNavigationBarItems: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  // title: Text('МОИ\nАМУЛЕТЫ'),
                  icon: Container(
                    width: 30,
                    height: 30,
                    child: SvgPicture.asset(
                      "assets/Union1.svg",
                      color: Color(0xFFFEDA5B),
                    ),
                  ),
                  label: '     МОИ\nАМУЛЕТЫ',
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        "assets/Union2.svg",
                        color: Color(0xFFFEDA5B),
                      ),
                    ),
                    label: 'ВЫБРАТЬ\n АМУЛЕТ'),
                BottomNavigationBarItem(
                    icon: Container(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        "assets/Union3.svg",
                        color: Color(0xFFFEDA5B),
                      ),
                    ),
                    label: 'РАССЧИТАТЬ\n   МАТРИЦУ'),
              ],
              currentIndex: _selectedIndex,
              onIndexChange: (val) {
                _onItemTab(val);
              }),
        ],
      ),
    );
  }
}
