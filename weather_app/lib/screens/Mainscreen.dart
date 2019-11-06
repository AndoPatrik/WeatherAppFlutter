import 'package:flutter/material.dart';
import 'package:weather_app/widgets/CardContainer.dart';
import 'package:weather_app/widgets/ChooseLocationPopUp.dart';

class Mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: There could be a 'general left right padding' on the entire screen..
    return Container(
      // Back ground gif
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage("assets/rain.gif"), fit: BoxFit.fill),
      // ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            //FIRST SECTION
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(/*vertical: 20.0,*/ horizontal: 40.0),
                child: CardContainer(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Copenhagen",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Denmark | Zealand",
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "12°C",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "1,5 ws",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "330 wd",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),

                    //TODO: No need for additional spacing of the screen size is less then 1024..
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          " 71% |",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        Text(
                          " 33 km/h |",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        Text(
                          " 1009 mb ",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //MID SECTION
            SizedBox(height: 20.0,),
            Expanded(
              flex: 2,
              //TODO: Check if the screen size is smaller then 1024px. Screensize > 1024 == no top down padding : padding all 
              // child: Padding(
              //     padding:
              //         EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CardContainer(
                        width: 150,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "US AQI",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "52",
                            style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "O3",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          )
                        ],
                      ),
                      CardContainer(
                        width: 150,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "CN AQI",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "11",
                            style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "N2",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          )
                        ],
                      ),
                    ],
                  //)
                  ),
            ),
            //BOTTOM SECTION
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        print("Screen height debug:" + MediaQuery.of(context).size.height.toString());
                        ChooseLocationPopUp.createChooseLocationPupUp(
                            context: context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      "Synced at: " + DateTime.now().toString(),
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
