import 'package:flutter/material.dart';

class AppBackground1 extends StatelessWidget {
  AppBackground1({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('tanjiro.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: this.child,
    );
  }
}
