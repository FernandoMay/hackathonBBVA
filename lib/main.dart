import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bbva/uno.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: MyCard(),
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
                MyCard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MyCard(),
                MyCard(),
              ],
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
      height: MediaQuery.of(context).size.height / 2 - 40,
      width: MediaQuery.of(context).size.width / 2 - 40,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.red,
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
            child: Image(
              image: AssetImage(
                'lib/assets/logoblanco.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
