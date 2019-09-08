import 'package:bbva/maiz.dart';
import 'package:bbva/rotate.dart';
import 'package:bbva/rotate.dart';
import 'package:bbva/webview.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bbva/uno.dart';
import 'package:bbva/dos.dart';
import 'package:bbva/tres.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:splashscreen/splashscreen.dart';

import 'clima.dart';

Future<Clima> fetchPost() async {
  final response =
      await http.get('https://smn.cna.gob.mx/webservices/?method=1');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Clima.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timmi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashMove(),
    );
  }
}

class SplashMove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: MyHomePage(),
      backgroundColor: Colors.green,
      imageBackground: AssetImage('lib/imagenes/fondo.png'),
      image: Image(
        image: AssetImage('lib/icons/logoapp.jpg'),
      ),
      photoSize: 150.0,
      title: Text(
        'T I M M I',
        style: TextStyle(
          fontSize: 74.0,
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Timmi'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: MyCard(
                imagen: 'lib/icons/frio.png',
                texto: 'Clima hoy',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: ClimaHoy(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
            GestureDetector(
              child: MyCard(
                imagen: 'lib/imagenes/planta.jpg',
                texto: 'Estado de cosecha',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: Maiz(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
            GestureDetector(
              child: MyCard(
                imagen: 'lib/imagenes/hectareas.png',
                texto: 'Mapa',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: WebMap(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
            GestureDetector(
              child: MyCard(
                imagen: 'lib/icons/vientos.png',
                texto: 'Extras',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: Tres(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imagen;
  final String texto;

  MyCard({this.imagen, this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.12),
            offset: Offset(0, 10),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 24.0),
              child: Image(
                image: AssetImage(
                  imagen,
                ),
              ),
            ),
          ),
          texto != null
              ? Container(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      texto,
                      style: TextStyle(
                          fontSize: 28.0, fontStyle: FontStyle.italic),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
