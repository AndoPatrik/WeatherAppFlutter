import 'package:flutter/material.dart';
import 'package:weather_app/widgets/CardContainer.dart';

class Mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: CardContainer(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
                  child: CardContainer()),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
