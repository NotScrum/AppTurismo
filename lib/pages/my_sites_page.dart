import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mislibros/pages/home_page.dart';
import 'package:mislibros/pages/home_page2.dart';
import 'package:mislibros/pages/home_page3.dart';
import 'package:mislibros/pages/new_site_page.dart';

class MySitesPage extends StatefulWidget {
  const MySitesPage({Key? key}) : super(key: key);

  @override
  State<MySitesPage> createState() => _MySitesPageState();
}

class _MySitesPageState extends State<MySitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mis Sitios Turisticos"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical:16),

          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('sites').snapshots(),

              builder: (context, snapshot){
              if(!snapshot.hasData) return const Text('Loading');
              return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index){
                  QueryDocumentSnapshot site = snapshot.data!.docs[index];
                  return Card(
                    child:ListTile(
                      title: Text(site['name']),
                        subtitle: Text(site['description']),
                      leading : Text(site['rating']),




    onTap: () {
      if (site['name'] == "Pueblito Paisa") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        if (site['name'] == "Parque del Cafe") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage2()));
        }else{
          if (site['name'] == "Guatape") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage3()));
          }
        }
      }
    }




    //trailing: Text(site['rating'])
                    )
                    );
                  },
              );
              },
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewSitePage()));
        },
        //tooltip: 'New Site',
       //child: const Icon(Icons.add),

      ),
    );
  }
}
