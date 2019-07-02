import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double mySize = 150.0;

  Widget mySizeBox() {
    return SizedBox(
      width: 8.0,
    );
  }

  Widget singupButton() {
    return RaisedButton(
      color: Colors.green[900],
      child: Text(
        'sing up',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget singInButton() {
    return RaisedButton(
      child: Text('sing In'),
      onPressed: () {},
    );
  }

  Widget myButton() {
    return Container(
      width: 220.0,
      child: Row(children: <Widget>[
        Expanded(child: singInButton()),
        mySizeBox(),
        Expanded(child: singupButton()),
      ]),
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
    return Text('gameming');
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.yellow])),
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
