import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: Colors.black),
    );
  }
}
