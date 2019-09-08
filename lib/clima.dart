import 'package:bbva/rotate.dart';
import 'package:flutter/material.dart';

class ClimaHoy extends StatefulWidget {
  @override
  _ClimaHoyState createState() => _ClimaHoyState();
}

class _ClimaHoyState extends State<ClimaHoy>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 50),
    );

    animationController.repeat();
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
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
                  SplashScreenQ(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16.0,
                        ),
                        Ficha(
                          data: 'Temperatura Máx',
                          datated: '28 °C',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Ficha(
                          data: 'Temperatura Min',
                          datated: '6 °C',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Ficha(
                          data: 'Precipitaciones',
                          datated: '0',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Ficha(
                          data: 'Humedad',
                          datated: '4',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Ficha(
                          data: 'Velocidad viento KMH',
                          datated: '2',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Ficha(
                          data: 'Dirección viento',
                          datated: '147',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ficha extends StatelessWidget {
  final String data;
  final String datated;

  Ficha({this.data, this.datated});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              data,
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ),
          datated != null
              ? Container(
                  child: Text(
                    datated,
                    style: TextStyle(
                      fontSize: 38.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
