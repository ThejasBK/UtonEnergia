import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'welcome.dart';
import 'overview.dart';
import 'basic_info.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final databaseReference = FirebaseDatabase.instance.reference();
  TextEditingController uniqueIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordCheckController = TextEditingController();

  Container input(String inp, bool obscurity, TextEditingController controllerName) {
    return Container(
        margin: EdgeInsets.all(10),
        //width: MediaQuery.of(context).size.width * 0.8,
        child: new Theme(data: new ThemeData(
            primaryColor: Color.fromRGBO(90, 90, 90, 1),
            primaryColorDark: Colors.black87
        ), child: new TextFormField(
          validator: (value) {
            if(value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: controllerName,
          style: TextStyle(
              fontFamily: 'Roboto Slab',
              color: Colors.black87
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
    dynamic numberOfUsers;
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
                  color: Colors.black87
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(217, 213, 213, 1),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  inputLabel('UNIQUE ID'),
                  input('UNIQUE ID', false, uniqueIdController),
                  inputLabel("MOBILE NUMBER"),
                  input('MOBILE NUMBER', false, mobileNumberController),
                  inputLabel("PASSWORD"),
                  input('PASSWORD', true, passwordController),
                  inputLabel("CONFIRM PASSWORD"),
                  input('PASSWORD', true, passwordCheckController),
                  if(passwordController.text == passwordCheckController.text && passwordController.text != null)
                    Builder(
                    builder: (context) => FlatButton(
                      splashColor: Colors.white30,
                      onPressed: () {
                        String uniqueId = uniqueIdController.text;
                        databaseReference.child(uniqueId).set({
                            'Mobile Number': mobileNumberController.text,
                            'Password': passwordController.text,
                          });
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
                  else
                    Builder(
                      builder: (context) => FlatButton(
                        splashColor: Colors.white30,
                        onPressed: () {
                          // String uniqueId = uniqueIdController.text;
                          // databaseReference.child(uniqueId).set({
                          //   'email': emailController.text,
                          //   'password': passwordController.text,
                          // });
                          // Navigator.push(context,
                          //     MaterialPageRoute(
                          //         builder: (context) => BasicInformation()
                          //     )
                          // );
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
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}