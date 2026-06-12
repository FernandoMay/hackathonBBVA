import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'main.dart';

class Maiz extends StatelessWidget {
  const Maiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: CarouselSlider(
        items: <Widget>[
          Center(
              child: MyCard(
                  imagen: 'lib/icons/semilla1.png', texto: 'Semilla 1')),
          Center(
              child: MyCard(
                  imagen: 'lib/icons/semilla2.png', texto: 'Semilla 2')),
          Center(
              child: MyCard(
                  imagen: 'lib/icons/semilla3.png', texto: 'Semilla 3')),
          Center(
              child: MyCard(
                  imagen: 'lib/icons/semilla4.png', texto: 'Semilla 4')),
          Center(
              child: MyCard(
                  imagen: 'lib/icons/semilla5.png', texto: 'Semilla 5')),
          Center(
              child: MyCard(
                  imagen: 'lib/icons/semilla6.png', texto: 'Semilla 6')),
        ],
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.8,
          enlargeCenterPage: true,
          autoPlay: false,
        ),
      ),
    );
  }
}
