import 'package:flutter/material.dart';
import 'basic_info.dart';

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

class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();

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
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  inputLabel('Mobile Number'),
                  input('Mobile Number', false, mobileNumberController),
                  inputLabel('Enter OTP'),
                  input('Enter OTP', false, otpController),
                  Builder(
                      builder: (context) => FlatButton(
                        splashColor: Colors.white30,
                        onPressed: () {
                          Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => InitiateReset()
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

class InitiateReset extends StatefulWidget {
  @override
  _InitiateResetState createState() => _InitiateResetState();
}

class _InitiateResetState extends State<InitiateReset> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  inputLabel('Enter Password'),
                  input('Password', true, passwordController),
                  inputLabel('Confirm Password'),
                  input('Password', true, confirmPasswordController),
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
