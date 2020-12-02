import 'package:flutter/material.dart';

class AppBackground3 extends StatelessWidget {
  AppBackground3({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('zenitu.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: this.child,
    );
  }
}
