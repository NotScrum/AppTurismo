import 'package:flutter/material.dart';
import 'package:mislibros/pages/login_page.dart';

class  SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {
  @override

  void initState(){
    _closeSplash();
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
          ],
          ),
          ),
          ),
      ),
    );
  }

  Future<void> _closeSplash() async{
    Future.delayed(const Duration(seconds: 2),() async {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=> const LoginPage()));
    });
  }
}