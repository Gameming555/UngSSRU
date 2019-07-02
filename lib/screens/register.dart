import 'package:async/async.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
//Explicit

//Method
  Widget nameTecxt() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name :',
        labelStyle: TextStyle(color: Colors.pink),
        helperText: 'Type Display Name',
        helperStyle: TextStyle(color: Colors.pink),
        icon: Icon(
          Icons.face, 
          size: 36.0,
          color: Colors.pink[400],),
        ),
    );
  }
  Widget emailTecxt() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email :',
        labelStyle: TextStyle(color: Colors.pink),
        helperText: 'Type Display Email',
        helperStyle: TextStyle(color: Colors.pink),
        icon: Icon(
          Icons.email, 
          size: 36.0,
          color: Colors.pink[400],),
        ),
    );
  }
  Widget passwordTecxt() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: ' password:',
        labelStyle: TextStyle(color: Colors.pink),
        helperText: 'Type Display TELL',
        helperStyle: TextStyle(color: Colors.pink),
        icon: Icon(
          Icons.lock, 
          size: 36.0,
          color: Colors.red[400],),
        ),
    );
  }

  Widget uploadBotton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Register'),
        actions: <Widget>[uploadBotton()],
      ),
      body: Container(decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/game.png'),fit: BoxFit.cover),
      ),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 60.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(255,255,255,0.7)),
          width: 300.0,
          height: 300.0,
          child: Column(
            children: <Widget>[
              nameTecxt(),
              emailTecxt(),
              passwordTecxt(),
            ],
          ),
        ),
      ),
    );
  }
}
