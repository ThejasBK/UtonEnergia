//Page for invisible buttons

import 'package:flutter/material.dart';
import 'package:utonenergia/diagnosis.dart';
import 'package:utonenergia/tpms.dart';
import 'battery.dart';
import 'tpms.dart';
import 'diagnosis.dart';
import 'service.dart';

class BasicInformation extends StatefulWidget {
  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {

  Row tableContent(String name, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black45
          ),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
              backgroundColor: Color.fromRGBO(215, 215, 215, 1),
              appBar: AppBar(
                  backgroundColor: Color.fromRGBO(215, 215, 215, 1),
                  elevation: 0,
                  title: Text(
                    'My fortyfive',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  )
              ),
              body: Container(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset('images/full_vehicle.jpg'),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0.1,
                          top: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 1.0,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.13,
                              width: MediaQuery.of(context).size.width * 0.26,
                              child: FlatButton(
                                color: Colors.red,
                                splashColor: Colors.white30,
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => Tpms()
                                      )
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.1,
                          top: MediaQuery.of(context).size.height * 0.16,
                          child: Opacity(
                            opacity: 1.0,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.13,
                              width: MediaQuery.of(context).size.width * 0.26,
                              child: FlatButton(
                                color: Colors.red,
                                splashColor: Colors.white30,
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => Tpms()
                                      )
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0.53,
                          top: MediaQuery.of(context).size.height * 0.09,
                          child: Opacity(
                            opacity: 1.0,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: FlatButton(
                                color: Colors.red,
                                splashColor: Colors.white30,
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => Battery()
                                      )
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                          top: MediaQuery.of(context).size.height * 0.1,
                        ),
                        child: Column(
                          children: <Widget>[
                            tableContent('Total Distance', '1600 Kms'),
                            tableContent('Distance / Ride', '30 Kms'),
                            tableContent('Times Charged', '27'),
                            tableContent('Service Request', '0'),
                            tableContent('Vehicle Health', '98 %'),
                          ],
                        )
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          padding: EdgeInsets.all(6),
                          color: Colors.white30,
                          child: Text(
                            'Diagnosis',
                            style: TextStyle(
                                fontFamily: 'Roboto Slab',
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.width * 0.06
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Diagnosis()
                                )
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          padding: EdgeInsets.all(6),
                          color: Colors.white30,
                          child: Text(
                            'Service',
                            style: TextStyle(
                                fontFamily: 'Roboto Slab',
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.width * 0.06
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Service()
                                )
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}
