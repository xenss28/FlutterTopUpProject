import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/login.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (home: LoginPage());
  }
}



