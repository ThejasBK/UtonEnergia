import 'package:flutter/material.dart';
import 'package:utonenergia/overview.dart';
import 'overview.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Container input(String inp, bool obscurity) {
    return Container(
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
          obscureText: obscurity,
          cursorColor: Colors.white30,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white30)
            ),
            labelText: inp,
            labelStyle: TextStyle(
                color: Colors.white30,
                fontFamily: 'Roboto Slab'
            ),
          ),
        ))
    );
  }

  Padding inputLabel(String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        style: TextStyle(
            fontFamily: 'Roboto Slab',
            color: Colors.white,
            fontSize: 24
        ),
      ),
    );
    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                inputLabel('USERNAME'),
                input('USERNAME', false),
                inputLabel("PASSWORD"),
                input('PASSWORD', true),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Overview()
                          )
                      );
                    },
                    color: Colors.black,
                    child: Text(
                      'SUBMIT',
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
      ),
    );
  }
}
