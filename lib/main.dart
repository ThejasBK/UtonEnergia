import 'package:flutter/material.dart';

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
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
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
                RaisedButton(
                  child: Text('SUBMIT'),
                )
              ],
            ),
          ),
      ),
    );
  }
}
