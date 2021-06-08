import 'package:amulet_mobile/util/user.dart';
import 'package:flutter/material.dart';
import 'package:amulet_mobile/util/api.dart' as API;
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

import '../main.dart';

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget2 extends StatefulWidget {
  const MyStatefulWidget2({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget2> createState() => _MyStatefulWidget2State();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidget2State extends State<MyStatefulWidget2> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _name;
  TextEditingController _surname;
  TextEditingController _patronymic;
  TextEditingController _phone;
  TextEditingController _password;
  TextEditingController _controller6;
  TextEditingController _controller7;
  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _surname = TextEditingController();
    _patronymic = TextEditingController();
    _phone = TextEditingController();
    _password = TextEditingController();
    _controller6 = TextEditingController();
    _controller7 = TextEditingController();
  }

  @override
  void dispose() {
    _name.dispose();
    _surname.dispose();
    _patronymic.dispose();
    _phone.dispose();
    _password.dispose();
    _controller6.dispose();
    _controller7.dispose();

    super.dispose();
  }

  void redirect(bool value) {
    if (value)
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Navigation()));
    else
      Toast.show("Registration error", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }

  void createUser() {
    var usr = User(
        name: _name.text,
        surname: _surname.text,
        patronymic: _patronymic.text,
        phone: _phone.text,
        password: _password.text);

    Future<bool> res = API.register(usr);
    res.then((value) => redirect(value));
  }

  bool isSwitched = false;

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
          title: Text(
            'РЕГИСТРАЦИЯ',
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
        child: ListView(children: [
          Form(
            key: _formKey,
            child: Column(children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 50.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _phone,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      icon: Icon(Icons.local_phone),
                      labelText: 'Номер телефона',
                      hintText: 'Номер телефона',
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    validator: (value) {
                      if (value.isEmpty)
                        return 'Пожалуйста введите номер телефона';
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 50.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _password,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Пароль',
                      hintText: 'Пароль',
                      // fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value.isEmpty) return 'Пожалуйста введите пароль';
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 50.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _surname,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      icon: Icon(Icons.assignment),
                      labelText: 'Фамилия',
                      hintText: 'Фамилия',
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value.isEmpty) return 'Пожалуйста введите свое имя';
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 50.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      icon: Icon(Icons.assignment),
                      labelText: 'Имя',
                      hintText: 'Имя',
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value.isEmpty)
                        return 'Пожалуйста введите свою фамилию';
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 50.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: _patronymic,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      icon: Icon(Icons.assignment),
                      labelText: 'Отчество',
                      hintText: 'Отчество',
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value.isEmpty)
                        return 'Пожалуйста введите свое отчество';
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 50.0),
                child: TextFormField(
                    decoration: InputDecoration(icon: Icon(Icons.today)),
                    controller: _controller6,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value.isEmpty) return 'Пожалуйста введите';
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "МУЖЧИНА",
                    style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.blue,
                      // fontWeight: FontWeight.w200,
                      // fontFamily: "Roboto"
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.red[300],
                    activeColor: Colors.red,
                    inactiveTrackColor: Colors.blue[300],
                    inactiveThumbColor: Colors.blue,
                  ),
                  Text(
                    "ЖЕНЩИНА",
                    style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.red,
                      // fontWeight: FontWeight.w200,
                      // fontFamily: "Roboto"
                    ),
                  ),
                ],
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
                      'ПРОДОЛЖИТЬ',
                      style: TextStyle(
                        fontFamily: 'Khula-Regular',
                      ),
                    ),
                    padding: EdgeInsets.all(8.0),
                    onPressed: () =>
                        ({if (_formKey.currentState.validate()) createUser()}),
                  )),
            ]),
          ),
        ]),
      )),
    );
  }
}
