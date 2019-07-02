import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double mySize = 150.0;
  Widget singInButton() {
    return RaisedButton(
      child: Text('sing In'),onPressed: (){},
    );
  }

  Widget myButton() {
    return Container(
      width: 220.0,
      child: Row(
        children: <Widget>[singInButton(),singInButton()],
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 220.0,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'password',
          hintText: 'More 6 Character',
        ),
      ),
    );
  }

  Widget emailText() {
    return Container(
      width: 220.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email:',
          hintText: 'you@gmail.com',
        ),
      ),
    );
  }

  Widget showlogo() {
    return Container(
      width: mySize,
      height: mySize,
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget showText() {
    return Text('Authen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showlogo(),
            showText(),
            emailText(),
            passwordText(),
             myButton(),
          ],
        ),
      ),
    );
  }
}
