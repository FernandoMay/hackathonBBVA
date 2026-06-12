import 'package:flutter/material.dart';
import 'main.dart';

class Tres extends StatelessWidget {
  const Tres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const MyCard(imagen: 'lib/imagenes/colorimetria.jpg', texto: 'Colorimetría'),
            const MyCard(imagen: 'lib/imagenes/hectareas.png', texto: 'Hectáreas'),
            const MyCard(imagen: 'lib/imagenes/separacion.png', texto: 'Separación'),
            const MyCard(imagen: 'lib/imagenes/híbridosmaíz.png', texto: 'Híbridos de maíz'),
            const MyCard(imagen: 'lib/imagenes/testdesol.jpg', texto: 'Test de suelo'),
            const MyCard(imagen: 'lib/imagenes/pic.png', texto: 'Plagas'),
            const MyCard(imagen: 'lib/imagenes/projo.jpg', texto: 'Proyecto'),
            const MyCard(imagen: 'lib/imagenes/phtest.jpg', texto: 'pH test'),
            const MyCard(imagen: 'lib/imagenes/dron.jpg', texto: 'Dron'),
            const MyCard(imagen: 'lib/imagenes/h74.png', texto: 'H74'),
            const MyCard(imagen: 'lib/imagenes/bacterias.jpg', texto: 'Bacterias'),
            const MyCard(imagen: 'lib/imagenes/planta.jpg', texto: 'Planta'),
          ],
        ),
      ),
    );
  }
}
