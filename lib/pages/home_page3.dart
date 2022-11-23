import 'package:flutter/material.dart';

class  HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guatape')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8 , vertical:16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/piedrapenol.png'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Lugar: Guatape'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Ciudad: Medellin - Guatape'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Temperatura: 18°C'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Guatapé es un municipio turístico de los Andes al noroeste de Colombia y al este de Medellín. Es famoso por sus casas decoradas con bajorrelieves de colores. Está situado cerca del embalse artificial de Peñol-Guatapé'),
                const SizedBox(
                  height: 16,
                ),
                const Text('La Piedra del Peñol es una roca de granito gigante que se encuentra al sudoeste de la localidad y que dispone de una larga escalera hasta su cima, en la que se puede disfrutar de una vista panorámica de la zona'),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
