import 'package:flutter/material.dart';

class SplashScreenQ extends StatefulWidget {
  const SplashScreenQ({super.key});

  @override
  State<SplashScreenQ> createState() => _SplashScreenQState();
}

class _SplashScreenQState extends State<SplashScreenQ>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 50),
    )..addListener(() => setState(() {}));
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticIn,
      ),
      child: Container(
        height: 180,
        width: 180,
        child: Image.asset('lib/icons/soleado.png'),
      ),
    );
  }
}
