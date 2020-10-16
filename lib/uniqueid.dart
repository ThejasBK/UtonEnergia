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
        backgroundColor: Color.fromRGBO(217, 213, 213, 1),
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
                      color: Color.fromRGBO(90, 90, 90, 1),
                      fontSize: 24
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  //width: MediaQuery.of(context).size.width * 0.8,
                  child: new Theme(data: new ThemeData(
                      primaryColor: Color.fromRGBO(90, 90, 90, 1),
                      primaryColorDark: Colors.white
                  ), child: new TextField(
                    style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        color: Colors.white
                    ),
                    obscureText: false,
                    cursorColor: Color.fromRGBO(90, 90, 90, 1),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(90, 90, 90, 1),)
                      ),
                      labelText: 'UNIQUE ID',
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(90, 90, 90, 1),
                          fontFamily: 'Roboto Slab'
                      ),
                    ),
                  )
                  )
              ),

              Builder(
                builder: (context) => FlatButton(
                  splashColor: Colors.white30,
                  onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Register()
                          )
                      );
                  },
                  child: Card(
                      color: Color.fromRGBO(179, 172, 172, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200)
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ListTile(
                            title: Center(child: Text(
                              'PROCEED',
                              style: TextStyle(
                                  fontFamily: 'Roboto Slab',
                                  color: Colors.black87,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
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
    );
  }
}
