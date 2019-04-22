import 'package:flutter/material.dart';
import 'register.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import '../models/user_model.dart';
import 'menuHorizontalScroll.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // Explicit
  String titleUser = 'ลงชื่อผู้ใช้งาน :';
  String hintUser = 'กรุณากรอก ชื่อผู้ใช้งาน';
  String user, password;
  final formKey = GlobalKey<FormState>();

  // Show Logo
  Widget showLogo() {
    return Image.asset(
      'images/logo.png',
      height: 128.0,
      width:240.0,
    );
  }

  // App Name
  Widget showAppName() { 
    return Text(
      'นวพร ค้าข้าว',
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  // User
  Widget userTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: titleUser,
          hintText: hintUser,
          labelStyle: TextStyle(fontSize: 25.0, color: Colors.white)),
      validator: (String value) {
        if (value.length == 0) {
          return 'Have Space';
        }
      },
      onSaved: (String value) {
        user = value;
      },
    );
  }

  // Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :',
          hintText: 'More 6 Charactor',
          labelStyle: TextStyle(fontSize: 25.0, color: Colors.white)),
      validator: (String value) {
        if (value.length == 0) {
          return 'Have Space';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  // SignIn
  Widget signInButton() {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.green[700],
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        print('You Click SignIn');
        checkAuthen();
      },
    );
  }

  void checkAuthen() async {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      String urlJSON =
          'https://www.androidthai.in.th/note/getUserWhereUserNote.php?isAdd=true&User=$user';

      var response = await get(urlJSON);
      var result = json.decode(response.body);

      if (result.toString() == 'null') {
        print('User False');
      } else {
        print(result.toString());

        for (var objJson in result) {
          var userModel = UserModel.formJSON(objJson);

          if (password == userModel.password.toString()) {
            print('Password True');
            goToMenu(context);
          } else {
            print('Password False');
          }
        }
      }
    } // if
  } // checkAuthe

  //  SignUp
  Widget signUpButton(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.green[100],
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.teal[900]),
      ),
      onPressed: () {
        print('You Click SignUp');
        goToRegister(context);
      },
    );
  }

  void goToMenu(BuildContext context) {
    var routeMenu =
        new MaterialPageRoute(builder: (BuildContext context) => ShowMenu());
    Navigator.of(context).push(routeMenu);
  }

  void goToRegister(BuildContext context) {
    var routeRegister =
        new MaterialPageRoute(builder: (BuildContext context) => Register());
    Navigator.of(context).push(routeRegister);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: formKey,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.yellow[900],
              Colors.yellow[900],
              Colors.yellow[600],
              Colors.yellow[600],
              Colors.yellow[400],
              Colors.yellow[400],
              Colors.yellow[300],
              Colors.yellow[300],
              Colors.yellow[200],
              Colors.yellow[200]
            ], begin: Alignment(1, -1))),
            padding: EdgeInsets.only(top: 100.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                showLogo(),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: showAppName(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: userTextFormField(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: passwordTextFormField(),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      new Expanded(
                        child: signInButton(),
                      ),
                      new Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: signUpButton(context),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
                )
              ],
            ),
          ),
        ));
  }
}
