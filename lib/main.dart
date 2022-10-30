import 'package:flutter/material.dart';
import 'package:mislibros/pages/register_page.dart';
import 'package:mislibros/pages/login_page.dart';
import 'package:mislibros/pages/splash_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismo NotScrum',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      //home: const RegisterPage(),
      home: const SplashPage(),
    );
  }
}

