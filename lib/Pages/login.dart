import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/home.dart';

class LoginPage extends StatefulWidget {
  //final String usename;
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var ctrlUser = TextEditingController();
  var ctrlPass = TextEditingController();
  var ctx = null;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(message)));
  }

  void validate() {
    if (ctrlUser.text == "") {
      return showSnackBar('Username must be filled');
    }
    if (ctrlPass.text == "") {
      return showSnackBar('Password must be filled');
    }
    if (ctrlPass.text.length <= 4) {
      return showSnackBar('Password length must betweren 4 - 16');
    }
    if (ctrlUser.text.length <= 6) {
      return showSnackBar('Usename length must greater than 6.');
    } else {
      showSnackBar('Register Success!!');
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => HomePage(username: ctrlUser.text,)));
    }
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Image.asset(
              'images/logoafter.png',
              height: 247,
              width: 230,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Username',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrlUser,
                decoration: InputDecoration(
                    hintText: "markicob123", border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Password',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: ctrlPass,
                decoration: InputDecoration(
                    hintText: "abc123!@#", border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: validate, child: Text('Login'))
          ],
        ));
  }
}
