import 'package:flutter/material.dart';
import 'screens/authen.dart';
import 'screens/register.dart';

// main method
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authen()
    );
  }
}
