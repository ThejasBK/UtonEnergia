import 'package:flutter/material.dart';
import 'package:utonenergia/overview.dart';
import 'overview.dart';
import 'basic_info.dart';

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
            primaryColor: Color.fromRGBO(90, 90, 90, 1),
            primaryColorDark: Colors.white
        ), child: new TextField(
          style: TextStyle(
              fontFamily: 'Roboto Slab',
              color: Colors.white
          ),
          obscureText: obscurity,
          cursorColor: Color.fromRGBO(90, 90, 90, 1),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(90, 90, 90, 1),)
            ),
            labelText: inp,
            labelStyle: TextStyle(
                fontFamily: 'Roboto Slab',
                color: Color.fromRGBO(90, 90, 90, 1)
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
            color: Color.fromRGBO(90, 90, 90, 1),
            fontSize: 24
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'fortyfive',
              style: TextStyle(
                  fontFamily: 'Roboto Slab',
                  fontSize: 24,
                  color: Colors.white
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(217, 213, 213, 1),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                inputLabel('USERNAME'),
                input('USERNAME', false),
                inputLabel("PASSWORD"),
                input('PASSWORD', true),
                Builder(
              builder: (context) => FlatButton(
                splashColor: Colors.white30,
                onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => BasicInformation()
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
      ),
    );
  }
}
