import 'package:flutter/material.dart';

import '../main.dart';

class Amulet7 extends StatefulWidget {
  @override
  _Amulet7State createState() => _Amulet7State();
}

class _Amulet7State extends State<Amulet7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('НОВОГОДНИЙ АМУЛЕТ'),
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
          IconButton(
            alignment: Alignment.topRight,
            iconSize: 30,
            icon: const Icon(Icons.new_releases),
            tooltip: 'Increase volume by 10',
            onPressed: () => ({
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Navigation())),
            }),
          ),
          Container(
              height: 300,
              width: 300,
              child: Image(image: AssetImage('assets/Frame7.jpg'))),
          SizedBox(
            height: 30,
          ),
          Text('Информация о таблице'),
          Text('Информация о таблице'),
          Text('Информация о таблице'),
          Text('Информация о таблице'),
        ],
      ),
    );
  }
}
