import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget uploadIcon() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('upload pressed');
      },
    );
  }

  // Name
  Widget nameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name :', hintText: 'Peter'),
    );
  }

  // User
  Widget userTextFormField() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'User :', hintText: 'Peter129'));
  }

  // Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password', hintText: '1234'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Register'),
          actions: <Widget>[uploadIcon()],
        ),
        body: Container(color: Colors.yellow[600],
            padding: EdgeInsets.all(50.0),
            child: Container( padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      width: 3.0,
                      color: Colors.yellow[700],
                      style: BorderStyle.solid)),
              child: Column(
                children: <Widget>[
                  nameTextFormField(),
                  userTextFormField(),
                  passwordTextFormField()
                ],
              ),
            )));
  }
}
