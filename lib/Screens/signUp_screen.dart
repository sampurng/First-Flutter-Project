import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp_screen extends StatefulWidget {
  SignUp_screen({Key key}) : super(key: key);

  static final String id = 'signUp_screen';

  @override
  _SignUp_screenState createState() => _SignUp_screenState();
}

class _SignUp_screenState extends State<SignUp_screen> {
  final _formKey = GlobalKey<FormState>();
  String name, email, password;

  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(email);
      print(password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Instagram',
              style: TextStyle(fontSize: 50.0, fontFamily: 'Billabong'),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      validator: (input) => input.trim().isEmpty
                          ? 'Please Enter a valid Name'
                          : null,
                      onSaved: (input) => name = input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (input) => !input.contains('@')
                          ? 'Please Enter a valid Email Address'
                          : null,
                      onSaved: (input) => email = input,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        validator: (input) => input.length < 6
                            ? 'Length is less tahn six characters'
                            : null,
                        onSaved: (input) => password = input,
                        obscureText: true,
                      )),
                  SizedBox(height: 20.0),
                  Container(
                    width: 250.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(10.0),
                      onPressed: _submit,
                      color: Colors.blue,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 250.0,
                    child: FlatButton(
                      padding: EdgeInsets.all(10.0),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.blue,
                      child: Text(
                        'Go to Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
