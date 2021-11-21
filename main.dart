import 'package:flutter/material.dart';
import 'package:login_ui/register.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
     'login': (context) => const LoginPage(),
      'register':(contex) => const RegisterPage()
    },
  ));
}


