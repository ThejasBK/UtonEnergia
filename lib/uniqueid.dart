import 'package:flutter/material.dart';
import 'register.dart';

class Unique extends StatefulWidget {
  @override
  _UniqueState createState() => _UniqueState();
}

class _UniqueState extends State<Unique> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'UNIQUE ID',
                  style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      color: Colors.white,
                      fontSize: 24
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  //width: MediaQuery.of(context).size.width * 0.8,
                  child: new Theme(data: new ThemeData(
                      primaryColor: Colors.white30,
                      primaryColorDark: Colors.white
                  ), child: new TextField(
                    style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        color: Colors.white
                    ),
                    obscureText: false,
                    cursorColor: Colors.white30,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30)
                      ),
                      labelText: 'UNIQUE ID',
                      labelStyle: TextStyle(
                          color: Colors.white30,
                          fontFamily: 'Roboto Slab'
                      ),
                    ),
                  )
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Register()
                        )
                    );
                  },
                  color: Colors.black,
                  child: Text(
                    'PROCEED',
                    style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        color: Colors.white,
                        fontSize: 24
                    ),
                  ),
                  splashColor: Colors.white30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
