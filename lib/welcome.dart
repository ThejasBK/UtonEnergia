import 'package:flutter/material.dart';
import 'package:utonenergia/overview.dart';
import 'battery.dart';
import 'tpms.dart';
import 'diagnosis.dart';
import 'service.dart';
import 'overview.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'fortyfive',
              style: TextStyle(
                color: Colors.white30,
                fontFamily: 'Roboto Slab',
                fontSize: 20
              ),
            ),
          ),
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Welcome to fortyfive. One place to track all your vehicle status or problems. Tap the below button to check status.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                Builder(
                  builder: (context) => FlatButton(
                    splashColor: Colors.white30,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Overview()
                          )
                      );
                    },
                    child: Card(
                        color: Colors.black,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ListTile(
                              title: Center(child: Text(
                                'STATUS',
                                style: TextStyle(
                                    fontFamily: 'Roboto Slab',
                                    color: Colors.white,
                                    fontSize: 24
                                ),
                              )),
                            )
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
