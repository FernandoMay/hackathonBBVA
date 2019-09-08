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
              ),
              MyCard(
                imagen: 'lib/imagenes/hectareas.png',
              ),
              MyCard(
                imagen: 'lib/imagenes/separacion.png',
              ),
              MyCard(
                imagen: 'lib/imagenes/híbridosmaíz.png',
              ),
              MyCard(
                imagen: 'lib/imagenes/testdesol.jpg',
              ),
              MyCard(
                imagen: 'lib/imagenes/pic.png',
              ),
              MyCard(
                imagen: 'lib/imagenes/projo.jpg'
              ),
              MyCard(
                imagen: 'lib/imagenes/phtest.jpg',
              ),
              MyCard(
                imagen: 'lib/imagenes/dron.jpg',
              ),
              MyCard(
                imagen: 'lib/imagenes/h74.png',
              ),
              MyCard(
                imagen: 'lib/imagenes/bacterias.jpg',
              ),
              MyCard(
                imagen: 'lib/imagenes/planta.jpg',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
