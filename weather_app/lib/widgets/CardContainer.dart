import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({this.children, this.width});

  final List<Widget> children;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.black.withOpacity(0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
