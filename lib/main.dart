import 'package:flutter/material.dart';
import 'package:mislibros/pages/register_page.dart';
import 'package:mislibros/pages/login_page.dart';
import 'package:mislibros/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turismo NotScrum',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      //home: const RegisterPage(),
      home: const SplashPage(),
    );
  }
}

