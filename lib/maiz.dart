import 'package:bbva/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Maiz extends StatelessWidget {
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
        child: CarouselSlider(
          height: MediaQuery.of(context).size.height,
          items: <Widget>[
            Center(child: MyCard(imagen: 'lib/icons/semilla1.png', texto: '')),
            Center(child: MyCard(imagen: 'lib/icons/semilla2.png', texto: '')),
            Center(child: MyCard(imagen: 'lib/icons/semilla3.png', texto: '')),
            Center(child: MyCard(imagen: 'lib/icons/semilla4.png', texto: '')),
            Center(child: MyCard(imagen: 'lib/icons/semilla5.png', texto: '')),
            Center(child: MyCard(imagen: 'lib/icons/semilla6.png', texto: '')),
          ],
        ),
      ),
    );
  }
}
