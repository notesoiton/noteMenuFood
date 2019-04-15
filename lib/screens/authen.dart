import 'package:flutter/material.dart';
import 'register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // Explicit
  String titleUser = 'ลงชื่อผู้ใช้งาน:';
  String hintUser = 'กรุณาชื่อผู้ใช้งาน';
  // Show Logo
  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  // App Name
  Widget showAppName() {
    return Text(
      'นวพร ค้าข้าว',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.orangeAccent[700]),
    );
  }

  // user
  Widget userTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: titleUser,
          hintText: hintUser,
          labelStyle: TextStyle(fontSize: 24.0, color: Colors.lightBlue)),
    );
  }

  // password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password:',
          hintText: 'More than 6 Characters',
          labelStyle: TextStyle(fontSize: 24.0, color: Colors.lightBlue)),
    );
  }

  // SignIn
  Widget signInButton() {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0)),
      color: Colors.black,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.yellow[600]),
      ),
      onPressed: () {},
    );
  }

  // SignUp
  Widget signUpButton(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.black,
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.yellow[600]),
      ),
      onPressed: () {
        print('click sign up');
        goToRegister(context);
      },
    );
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
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment(-1, -1))),
          padding: EdgeInsets.only(top: 30.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              showLogo(),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: showAppName(),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0),
                child: userTextFromField(),
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
                        margin: EdgeInsets.only(left: 10.0),
                        child: signUpButton(context),
                      ),
                    )
                  ],
                ),
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
              )
            ],
          )),
    );
  }
}
