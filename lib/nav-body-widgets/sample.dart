import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  final Animation animation;

  Sample({this.animation});
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return A_Animation1(
      animation: widget.animation,
      child: Container(
        child: Center(
          child: Text('Delivery'),
        ),
      ),
    );
  }
}
