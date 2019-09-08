import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bbva/uno.dart';
import 'package:bbva/dos.dart';
import 'package:bbva/tres.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:splashscreen/splashscreen.dart';

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
      seconds: 13,
      navigateAfterSeconds: MyHomePage(),
      backgroundColor: Colors.green,
      image: Image(
        image: AssetImage('lib/icons/logoappq.png'),
      ),
      photoSize: 100.0,
      title: Text(
        'Timmi',
        style: TextStyle(
          fontSize: 38.0,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: Uno(
                      post: fetchPost(),
                    ),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
            GestureDetector(
              child: MyCard(
                imagen: 'lib/icons/lluvia.png',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: Dos(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
            GestureDetector(
              child: MyCard(
                imagen: 'lib/icons/templado.png',
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
            GestureDetector(
              child: MyCard(
                imagen: 'lib/icons/vientos.png',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: Uno(),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 24.0),
            child: Image(
              image: AssetImage(
                imagen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
