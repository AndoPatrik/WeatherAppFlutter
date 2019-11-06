import 'package:flutter/material.dart';

class LocationSelectCard extends StatelessWidget {

  LocationSelectCard({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey
      ),
      child: child,
    );
  }
}