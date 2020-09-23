import 'package:flutter/material.dart';
import 'battery.dart';
import 'tpms.dart';
import 'diagnosis.dart';
import 'service.dart';
import 'welcome.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {

  Container button(String task) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.4,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop('_showDialog');
          if (task == 'Battery')
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Battery()
                )
            );
          else if (task == 'TPMS')
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Tpms()
                )
            );
          else if (task == 'Diagnosis')
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Diagnosis()
                )
            );
          else if (task == 'X')
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Welcome()
                )
            );
          else
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Service()
                )
            );
        },
        color: Colors.white30,
        child: Text(
          task,
          style: TextStyle(
              fontFamily: 'Roboto Slab',
              color: Colors.white,
              fontSize: 24
          ),
        ),
        splashColor: Colors.white30,
      ),
    );
  }

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

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Card(
              color: Colors.black,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Center(child: Text(
                      'fortyfive services',
                      style: TextStyle(
                          fontFamily: 'Roboto Slab',
                          color: Colors.white,
                          fontSize: 24
                      ),
                    )),
                  )
              )
          ),
          backgroundColor: Colors.black,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button('TPMS'),
              button('Battery'),
              button('Diagnosis'),
              button('Service'),
              button('X')
            ],
          ),
        );
      },
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
                      _showDialog();
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
