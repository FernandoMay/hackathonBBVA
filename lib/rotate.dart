import 'package:flutter/material.dart';

class SplashScreenQ extends StatefulWidget {
  _SplashScreenQ createState() => new _SplashScreenQ();
}

class _SplashScreenQ extends State<StatefulWidget>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 50),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticIn,
    );

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
      turns: animation,
      child: Container(
        height: 180,
        width: 180,
        child: Image.asset('lib/icons/soleado.png'),
      ),
    );
  }
}
