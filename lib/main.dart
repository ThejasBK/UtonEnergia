import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utonenergia/register.dart';
import 'overview.dart';
import 'basic_info.dart';
import 'diagnosis.dart';
import 'opening.dart';

void main() {
  return runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new Opening(),
      title: new Text('fortyfive',
        style: new TextStyle(
            fontFamily: 'Roboto Slab',
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white
        ),
      ),
      backgroundColor: Colors.black,
      loaderColor: Colors.white30,
    );
  }
}


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _showDialog() {
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
                      'fortyfive',
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
          content: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'The Unique ID or password entered is incorrect',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      color: Colors.white,
                      fontSize: 24
                  ),
                ),
                Text(
                  'Please try again',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      color: Colors.white,
                      fontSize: 24
                  ),
                ),
                Builder(
                  builder: (context) => FlatButton(
                    splashColor: Colors.white30,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => SignIn()
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
                                'OK',
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
        );
      },
    );
  }

  void checkData(TextEditingController uniqueId){
    final databaseReference = FirebaseDatabase.instance.reference().child(uniqueId.text);
    print(passwordController.text);
    databaseReference.once().then((DataSnapshot snapshot) {
      print(snapshot.value['password']);
      try {
        if(passwordController.text ==  snapshot.value['password'])
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => BasicInformation()
              )
          );
        else
          _showDialog();
      }
      catch(Exception) {
        print('Invalid uniqueID');
      }
    });
  }

  Container input(String inp, bool obscurity, TextEditingController controllerName) {
    return Container(
        margin: EdgeInsets.all(10),
        //width: MediaQuery.of(context).size.width * 0.8,
        child: new Theme(data: new ThemeData(
            primaryColor: Color.fromRGBO(90, 90, 90, 1),
            primaryColorDark: Colors.white
        ), child: new TextField(
          controller: controllerName,
          style: TextStyle(
              fontFamily: 'Roboto Slab',
              color: Colors.black87,
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
            fontSize: 16
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool _value = true;
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
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(child: Image.asset('images/tyre.jpg')),
                  // inputLabel('UNIQUE ID'),
                  input('UNIQUE ID', false, usernameController),
                  // inputLabel("PASSWORD"),
                  input('PASSWORD', true, passwordController),
                  CheckboxListTile(
                    value: _value,
                    onChanged: (bool newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    title: Text(
                      'Remember Me',
                      style:  TextStyle(
                          fontFamily: 'Roboto Slab',
                          color: Color.fromRGBO(90, 90, 90, 1),
                          fontSize: 20
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  Builder(
                    builder: (context) => FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => Register()
                            )
                        );
                      },
                      child: Card(
                          color: Color.fromRGBO(217, 213, 213, 1),
                          elevation: 0,
                          child: ListTile(
                            title: Center(child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontFamily: 'Roboto Slab',
                                  color: Colors.black87,
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold
                              ),
                            )),
                          )
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Builder(
                          builder: (context) => FlatButton(
                            splashColor: Colors.white30,
                            onPressed: () {
                              checkData(usernameController);
                            },
                            child: Card(
                                color: Color.fromRGBO(179, 172, 172, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                // margin: const EdgeInsets.only(left: 100, right: 100),
                                child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: ListTile(
                                      title: Center(child: Text(
                                        'PROCEED',
                                        style: TextStyle(
                                            fontFamily: 'Roboto Slab',
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )),
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Builder(
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
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                // margin: const EdgeInsets.only(left: 100, right: 100, top: 20),
                                child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: ListTile(
                                      title: Center(child: Text(
                                        'NEW USER',
                                        style: TextStyle(
                                            fontFamily: 'Roboto Slab',
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )),
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
