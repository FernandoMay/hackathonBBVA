import 'package:bbva/main.dart';
import 'package:flutter/material.dart';

class Tres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MyCard(
                imagen: 'lib/imagenes/colorimetria.jpg',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/hectareas.png',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/separacion.png',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/híbridosmaíz.png',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/testdesol.jpg',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/pic.png',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/projo.jpg',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/phtest.jpg',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/dron.jpg',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/h74.png',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/bacterias.jpg',
                texto: 'x',
              ),
              MyCard(
                imagen: 'lib/imagenes/planta.jpg',
                texto: 'x',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
