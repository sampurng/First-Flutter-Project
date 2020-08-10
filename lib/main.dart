import 'package:first_time_be_gentle/Screens/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: new Scaffold(
        body: new LoginScreen(),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignUp_screen.id: (context) => SignUp_screen(),
      },
    );
  }
}
