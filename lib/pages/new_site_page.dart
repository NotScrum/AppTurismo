//import 'dart:js';

import 'package:flutter/material.dart';

import '../models/site.dart';
import '../repository/firebase_api.dart';

class NewSitePage extends StatefulWidget {
  const NewSitePage({Key? key}) : super(key: key);

  @override
  State<NewSitePage> createState() => _NewSitePageState();
}


final FirebaseApi _firebaseApi = FirebaseApi();
final _name= TextEditingController();
final _description = TextEditingController();
final _rating = TextEditingController();

void _createSite(Site site) async{
  var result = await _firebaseApi.createSite(site);
  //_showMsg(result);
 // Navigator.pop(context);
}



//void _showMsg(String msg) {
//  final scaffold = ScaffoldMessenger.of(context);
//  scaffold.showSnackBar(
//    SnackBar(
//     content: Text(msg),
  //    action: SnackBarAction(
  //        label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
 //   ),
 // );
//}


void _saveSite(){
  var site = Site("",_name.text, _description.text, _rating.text);
  _createSite(site);
}




class _NewSitePageState extends State<NewSitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuevo Sitio Turistico"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical:16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Nombre'),
              keyboardType: TextInputType.text,
                    ),
                const SizedBox(
                  height: 16,
                  ),
                TextFormField(
                  controller: _description,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Descripción'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),

                TextFormField(
                  controller: _rating,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Rating'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    _saveSite();
                  },
                  child: const Text('Guardar Sitio Turistico'),
                ),
              ],
            ),
          ),
      ),
    );

  }
}
