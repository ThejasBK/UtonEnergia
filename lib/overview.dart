import 'package:flutter/material.dart';
import 'welcome.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {

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
                Container(
                  child: Image.asset('images/full_vehicle.jpg'),
                  width: MediaQuery.of(context).size.width,
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
                  padding: EdgeInsets.all(8),
                  child: RaisedButton(
                    padding: EdgeInsets.all(8),
                    color: Colors.white30,
                    child: Text(
                      'Expanded Details',
                      style: TextStyle(
                          fontFamily: 'Roboto Slab',
                          color: Colors.white,
                          fontSize: 24
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Welcome()
                          )
                      );
                    },
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
