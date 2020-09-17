import 'package:flutter/material.dart';
import 'register.dart';
//Splash screen changed in android/app/src/main/res/drawable -  android
//Splash screen changed in ios/Runner/Assets.xcassets/launchImage.imageset - iOS
void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Container input(String inp, bool obscurity) {
    return Container(
        margin: EdgeInsets.all(10),
        //width: MediaQuery.of(context).size.width * 0.8,
        child: new Theme(data: new ThemeData(
            primaryColor: Colors.white30,
            primaryColorDark: Colors.white
        ), child: new TextField(
          style: TextStyle(
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
                color: Colors.white30
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
            color: Colors.white,
            fontSize: 24
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      print('Hello');
                    },
                    color: Colors.black,
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
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
