import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
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
                  image: AssetImage('assets/images/PueblitoPaisa.png'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Lugar: Pueblito Paisa'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Ciudad: Medellín'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Temperatura: 20°C'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Es la réplica de un pueblo típico Antioqueño y se posa sobre la cima del Cerro Nutibara. El contorno de su pequeña plaza se adorna con las construcciones tradicionales de cualquier poblado como la iglesia y la alcaldía.'),
                const SizedBox(
                  height: 16,
                ),
                const Text('El Pueblito Paisa tiene esculturas de corte modernista y abstracto. Entre ellas estan la escultura del Cacique Nutibara y su compañera la Cacica Nutabe y un puma bajo su pie, como símbolo de poder. Fue construída en 1995 por el maestro José Herrera Betancur. La escultura mide 3 m de altura por 2.90 m de ancho y pesa 4 toneladas aprox, y un monumento a un personaje importante, el escritor antioqueño Tomas Carrasquilla.'),
              ],

            ),
          ),
        ),
      ),
    );
  }
}