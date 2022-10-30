import 'dart:convert';
import 'package:mislibros/models/User.dart';
import 'package:flutter/material.dart';
import 'package:mislibros/pages/home_page.dart';
import 'package:mislibros/pages/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class  LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _email =TextEditingController();
  final _password =TextEditingController();

  User userLoad = User.Empty();

  getUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> userMap = jsonDecode(prefs.getString("user")!);
    userLoad = User.fromJson(userMap);
  }

  void_validateUser(){
    if(_email.text == userLoad.email && _password.text == userLoad.password){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>const HomePage()));
    }else{
      final scaffold = ScaffoldMessenger.of(context);
      scaffold.showSnackBar(
          SnackBar(
              content: const Text("Correo o contraseña incorrecta"),
            action: SnackBarAction(
              label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
            )
          );
    }
  }

  @override
  void initState(){
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8 , vertical:16),
        child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Correo electrónico'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: (){
                    //_onRegisterButtonClicked();
                    void_validateUser();
                  },
                  child: const Text("Iniciar Sesión")),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: const Text('Registrese'),
              ),
            ],
          ),
        ),
        ),
      ),
    );

  }
}

