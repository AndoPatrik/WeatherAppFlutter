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
                child: CardContainer(
                   children: <Widget>[
                     SizedBox(height: 40,),
                      Text("Copenhagen", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold) ,),
                      Text("Denmark | Zealand", style: TextStyle(fontSize: 15.0, color: Colors.black),),
                      SizedBox(height: 20,),
                      Text("12°C", style: TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(" 71% |", style: TextStyle(fontSize: 20.0, color: Colors.black),),
                          Text(" 33 km/h |", style: TextStyle(fontSize: 20.0, color: Colors.black),),
                          Text(" 1009 mb ", style: TextStyle(fontSize: 20.0, color: Colors.black),),
                        ],
                      ),
                    ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
                  child: CardContainer(
                    children: <Widget>[
                      Text("Pollution data", style: TextStyle(color: Colors.black),)
                    ],
                  )),
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
