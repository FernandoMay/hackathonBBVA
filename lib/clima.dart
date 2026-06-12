import 'package:flutter/material.dart';
import 'rotate.dart';

class ClimaHoy extends StatefulWidget {
  const ClimaHoy({super.key});

  @override
  State<ClimaHoy> createState() => _ClimaHoyState();
}

class _ClimaHoyState extends State<ClimaHoy>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 50),
    );
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
            Container(
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLowest,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
            color: Colors.black.withValues(alpha: .12),
            offset: const Offset(0, 10),
            blurRadius: 30,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  const SplashScreenQ(),
                  const SizedBox(height: 30.0),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 16.0),
                      const Ficha(data: 'Temperatura Máx', datated: '28 °C'),
                      const SizedBox(height: 20.0),
                      const Ficha(data: 'Temperatura Min', datated: '6 °C'),
                      const SizedBox(height: 20.0),
                      const Ficha(data: 'Precipitaciones', datated: '0'),
                      const SizedBox(height: 20.0),
                      const Ficha(data: 'Humedad', datated: '4'),
                      const SizedBox(height: 20.0),
                      const Ficha(data: 'Velocidad viento KMH', datated: '2'),
                      const SizedBox(height: 20.0),
                      const Ficha(data: 'Dirección viento', datated: '147'),
                    ],
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

  const Ficha({super.key, required this.data, required this.datated});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .12),
            offset: const Offset(0, 10),
            blurRadius: 30,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              data,
              style: const TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ),
          Text(
            datated,
            style: const TextStyle(
              fontSize: 38.0,
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
