import 'package:flutter/material.dart';
import 'package:mislibros/models/User.dart';
import 'package:mislibros/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';



class  RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPasword = TextEditingController();

  String data ='Información';

  void _onRegisterButtonClicked(){
    setState(() {
      if(_password.text == _repPasword.text){

        var user = User(_name.text, _email.text, _password.text);
        saveUser(user);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder:(context)=> const LoginPage()));
      }else{
        _showMsg(context, "Las contraseñas deben ser iguales");
      }
    });
  }

  void _showMsg(BuildContext context, String msg){
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: Text(msg),
          action:SnackBarAction(
            label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
          ),
        );
  }

  void saveUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user",jsonEncode(user));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 16),
        child: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
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
              TextFormField(
                controller: _repPasword,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Repita la contraseña'),
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
                  _onRegisterButtonClicked();
                },
                child: const Text("Registrar")),
              Text(
                data,
                style: const TextStyle(
                  fontSize: 12, fontStyle: FontStyle.italic
                ),
              )
            ],
          ),
          )),
      ),
    );
  }
}



