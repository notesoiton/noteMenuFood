import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // App Name
  Widget showAppName() {
    return Text('Note Restaurant');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 30.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[showAppName(), showAppName(), showAppName()],
          )),
    );
  }
}
