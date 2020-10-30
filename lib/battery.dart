import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Battery extends StatefulWidget {
  @override
  _BatteryState createState() => _BatteryState();
}

class _BatteryState extends State<Battery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(215, 215, 215, 1),
          appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 1,
              centerTitle: true,
              title: Text(
                'My fortyfive',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              )
          ),
          body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('images/full_vehicle.jpg'),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2,
                      right: MediaQuery.of(context).size.width * 0.2,
                      top: MediaQuery.of(context).size.height * 0.1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Range',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black45
                                    ),
                                  ),
                                  Text(
                                    '60 Kms',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: <Widget>[
                                  Text('Battery',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black45
                                    ),
                                  ),
                                  Text(
                                    '90 %',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Battery health',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black45
                                ),
                              ),
                              Text(
                                '97 %',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
