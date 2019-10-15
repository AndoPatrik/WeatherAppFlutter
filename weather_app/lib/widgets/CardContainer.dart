import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({this.children});

  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: Colors.grey),
    child: Column(
      children: children,
    ),
    );
  }
}
