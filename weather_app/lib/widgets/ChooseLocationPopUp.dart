import 'package:flutter/material.dart';

class ChooseLocationPopUp {
  static createChooseLocationPupUp({@required BuildContext context}) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                height: 400,
                width: 100,
                child: PageView(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    Container(
                      color: Colors.deepPurple,
                    ),
                  ],
                ),
              ));
        });
  }
}
