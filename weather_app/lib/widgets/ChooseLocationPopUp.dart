import 'package:flutter/material.dart';
import 'package:weather_app/util/DataStore.dart';
import 'package:weather_app/widgets/LocationSelectCard.dart';
import 'package:http/http.dart' as http;

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
                      child: FutureBuilder(
                        future: DataStore.fetchCountries(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            print(snapshot.data);
                          }
                          return Container();
                          /*if (snapshot.connectionState ==
                              ConnectionState.done) {
                            print(snapshot.data["data"]);
                            return ListView.builder(
                                itemCount: snapshot.data["data"].length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                      title:
                                          Text(snapshot.data["data"][index]));
                                });
                          } else {
                            return CircularProgressIndicator();
                          }*/
                        },
                      ),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.grey),
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
                    )
                  ],
                ),
              ));
        });
  }
}
