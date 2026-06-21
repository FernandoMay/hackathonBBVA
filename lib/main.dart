import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'clima.dart';
import 'uno.dart';
import 'maiz.dart';
import 'tres.dart';
import 'webview.dart';
import 'theme/app_theme.dart';

Future<Clima> fetchPost() async {
  final response =
      await http.get(Uri.parse('https://smn.cna.gob.mx/webservices/?method=1'));
  if (response.statusCode == 200) {
    return Clima.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIMI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const SplashMove(),
    );
  }
}

class SplashMove extends StatefulWidget {
  const SplashMove({super.key});

  @override
  State<SplashMove> createState() => _SplashMoveState();
}

class _SplashMoveState extends State<SplashMove>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _fadeAnim = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MyHomePage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/imagenes/fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: FadeTransition(
          opacity: _fadeAnim,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/icons/logoapp.jpg', width: 150, height: 150),
              const SizedBox(height: 24),
              Text(
                'T I M I',
                style: TextStyle(
                  fontSize: 74,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('TIMI'),
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
                  MaterialPageRoute(builder: (_) => const ClimaHoy()),
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
                  MaterialPageRoute(builder: (_) => const Maiz()),
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
                  MaterialPageRoute(builder: (_) => const WebMap()),
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
                  MaterialPageRoute(builder: (_) => const Tres()),
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

  const MyCard({super.key, required this.imagen, required this.texto});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
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
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 38.0, vertical: 24.0),
              child: Image(
                image: AssetImage(imagen),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                texto,
                style: TextStyle(
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    color: theme.colorScheme.onSurface),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
