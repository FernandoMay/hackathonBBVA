import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bbva/uno.dart';
import 'package:bbva/dos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Maíz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('El Maíz de México'),
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
                    child: Uno(),
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
                    child: Uno(),
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
