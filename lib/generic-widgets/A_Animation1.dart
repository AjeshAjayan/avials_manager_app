import 'package:flutter/material.dart';

class A_Animation1 extends StatefulWidget {
  final Animation animation;
  final Widget child;

  A_Animation1({this.animation, this.child});
  @override
  _A_Animation1State createState() => _A_Animation1State();
}

class _A_Animation1State extends State<A_Animation1> {

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animation,
      child: widget.child,
      builder: (context, child) {
        return FadeTransition(
          opacity: widget.animation,
          child: Transform(
            transform: Matrix4.translationValues(0, 50 * (1.0 - widget.animation.value), 0),
            child: child,
          ),
        );
      },
    );
  }
}
