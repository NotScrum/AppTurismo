import 'package:flutter/material.dart';

class  HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parque del Cafe')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8 , vertical:16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/parquedelcafe.png'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Lugar: Parque del Cafe'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Ciudad: Armenia'),
                const SizedBox(
                  height: 16,
                ),
                const Text('Temperatura: 21°C'),
                const SizedBox(
                  height: 16,
                ),
                const Text('El Parque del Café es un parque temático colombiano situado en el corregimiento de Pueblo Tapao, del municipio de Montenegro en Quindío, Colombia. Dispone de dos teleféricos, shows, jardín del café mundial, tres montañas rusas, puestos de alimentos basados en café'),
                const SizedBox(
                  height: 16,
                ),
                const Text('El Parque del Café fue fundado en 1995 por la Federación Nacional de Cafeteros de Colombia a través del Comité Departamental de Cafeteros del Quindío; pertenece a la Fundación Parque de la Cultura Cafetera y es una entidad sin ánimo de lucro destinada a la preservación del patrimonio cultural e histórico del café en Colombia'),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
