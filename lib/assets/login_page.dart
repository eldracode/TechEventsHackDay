import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  login() {}
  register() {}
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: new Form(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Text(
                    'WELCOME',
                    textScaleFactor: 1.0,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) {
                  _email = value;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                onSaved: (value) {
                  _password = value;
                },
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  //  Navigator.of(context).pushNamed(HomePage.tag);
                  login();
                },
                color: Colors.lightBlueAccent,
                child: Text('Log In', style: TextStyle(color: Colors.white)),
              ),
              FlatButton(
                child: new Text('Need an account ? Register'),
                onPressed: register,
                textColor: Colors.black87,
              )
            ],
          ),
        ),
      ),
    );
  }
}
