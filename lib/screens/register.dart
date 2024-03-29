import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Explicit
  final formKey = GlobalKey<FormState>();
  String nameString, emailString, passwordString;

  // Method
  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name :',
        labelStyle: TextStyle(color: Colors.pink[400]),
        helperText: 'Type Display Name',
        helperStyle: TextStyle(color: Colors.pink[400]),
        icon: Icon(
          Icons.face,
          size: 36.0,
          color: Colors.pink[400],
        ),
      ),validator: (String value){
       if (value.isEmpty){
         return'Please Fill Neme in Bank';

      }
    },onSaved: (String value){
        nameString = value;

    },
    );
  }

  Widget emailText() {
    return TextFormField(keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email :',
        labelStyle: TextStyle(color: Colors.blue),
        helperText: 'Type you@email.com',
        helperStyle: TextStyle(color: Colors.blue),
        icon: Icon(
          Icons.email,
          size: 36.0,
          color: Colors.blue,
        ),
      ),validator: (String value){
        if (((value.contains('@'))&&(value.contains('.')))) {
          return 'Type Email Format';
        


        }
      },
    );
  }

  Widget passwordText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password :',
        labelStyle: TextStyle(color: Colors.green),
        helperText: 'More 6 Charactor',
        helperStyle: TextStyle(color: Colors.green),
        icon: Icon(
          Icons.lock,
          size: 36.0,
          color: Colors.green,
        ),
      ),validator: (String value){
         if(value.length <= 5){
          return 'pass Much more 6 Charactor';

        }
      },onSaved: (String value){
        if (value.length <= 5) {
          passwordString = value;
        }
      },
    );
  }

  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('Upload');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Name = $nameString, Email =$emailString, pass = $passwordString');

        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Register'),
        actions: <Widget>[uploadButton()],
      ),
      body: Form(key: formKey,
        child:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/game.png'), fit: BoxFit.cover),
        ),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 60.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.8),
          ),
          width: 300.0,
          height: 300.0,
          child: Column(
            children: <Widget>[
              nameText(),
              emailText(),
              passwordText(),
            ],
          ),
        ),
      ),),
    );
  }
}