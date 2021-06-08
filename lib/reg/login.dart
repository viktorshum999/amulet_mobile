import 'package:amulet_mobile/reg/admin.dart';
import 'package:amulet_mobile/util/user.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

import '../main.dart';
import 'package:amulet_mobile/util/api.dart' as API;

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _phone;
  TextEditingController _password;
  @override
  void initState() {
    super.initState();
    _phone = TextEditingController();
    _password = TextEditingController();

    check_login();
  }

  Future<void> check_login() async {
    final prefs = await SharedPreferences.getInstance();
    var key = 'isAuthorized';
    print(prefs.getInt(key));
    if(prefs.getInt(key) != null && prefs.getInt(key) != 0)
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Navigation()));
  }

  @override
  void dispose() {
    _phone.dispose();
    _password.dispose();
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

  void validate(User user){
    if(user != null) {
      _saveUser(user);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Navigation()));
    } else Toast.show("Invalid phone/password", context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

  }

  void onError(Exception error){
    if(error.toString() == 'Exception: Bad data')
      Toast.show("Invalid phone/password", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    else Toast.show("Connection error", context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }

  void login(){
    Future<User> res = API.login(_phone.text, _password.text);
    res.then((value) => validate(value));
    res.catchError((error, stackTrace) {
      // error is SecondError
      onError(error);
    });
  }

  _saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    var key = 'userID';
    var value = user.id;
    prefs.setInt(key, value);
    key = "isAuthorized";
    value = 1;
    prefs.setInt(key, value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'ВХОД',
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
          child: ListView(
            children: [
              SizedBox(
                height: 160,
              ),
              Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
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
                            labelText: 'Телефон',
                            hintText: 'Телефон',
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return 'Пожалуйста введите свой номер телефона';
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
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return 'Пожалуйста введите пароль';
                          }),
                    )
                  ])),
              Container(
                  margin: EdgeInsets.all(80),
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
                    onPressed: () => ({

                      login(),

                    }),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
