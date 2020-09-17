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
  final username = TextEditingController();
  final password = TextEditingController();
  final stadiumBorder = StadiumBorder(
    side: BorderSide(color: Colors.red),
  );
  final roundedShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    side: BorderSide(color: Colors.red),
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'USERNAME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    //width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      obscureText: false,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'USERNAME',
                        labelStyle: TextStyle(
                          color: Colors.white30
                        )
                      ),
                    )
                ),
                Text(
                  'PASSWORD',
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 24
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    //width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                            color: Colors.white30
                          )
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.3,
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
