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
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                      'USERNAME',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
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
                          color: Colors.white
                      ),
                      obscureText: true,
                      cursorColor: Colors.white30,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white30)
                          ),
                          labelText: 'USERNAME',
                          labelStyle: TextStyle(
                              color: Colors.white30
                          ),
                      ),
                    ))
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'PASSWORD',
                    style: TextStyle(
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
                          color: Colors.white
                      ),
                      obscureText: true,
                      cursorColor: Colors.white30,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white30)
                          ),
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              color: Colors.white30
                          )
                      ),
                    ))
                ),
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
