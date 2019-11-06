import 'package:flutter/material.dart';
import 'package:weather_app/widgets/LocationSelectCard.dart';

class ChooseLocationPopUp {
  static createChooseLocationPupUp({@required BuildContext context}) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              //backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                height: 400,
                width: 100,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                   Container(
                     child: ListView(
                           children: <Widget>[
                            Text("Country 1"),
                             Text("Country 2"),
                             Text("Country 3"),
                             Text("Country 4"),
                             Text("Country 5"),
                           ],
                         ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey
      ), 
                  //   Container(
                  //     color: Colors.red,
                  //   ),
                  //  LocationSelectCard(
                  //    child: Column(
                  //      children: <Widget>[
                  //        ListView(
                  //          children: <Widget>[
                  //            Text("Country 1"),
                  //            Text("Country 2"),
                  //            Text("Country 3"),
                  //            Text("Country 4"),
                  //            Text("Country 5"),
                  //          ],
                  //        ),
                  //        FloatingActionButton(
                  //          onPressed: () {},
                  //          child: Icon(Icons.add),
                  //        )
                  //      ],
                  //    ),
                  //  ),
                  //  LocationSelectCard(),
                  //  LocationSelectCard(),                    
                   )],
                ),
              ));
        });
  }
}
