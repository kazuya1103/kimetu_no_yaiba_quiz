import 'package:flutter/material.dart';

class AppBackground2 extends StatelessWidget {
  AppBackground2({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('nezuko.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: this.child,
    );
  }
}
