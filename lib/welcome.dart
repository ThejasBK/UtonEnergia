import 'package:flutter/material.dart';
import 'register.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Container button(String task) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          print('Hello');
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
                      setState(() {
                        _showDialog();
                      });
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
