import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'register.dart';
import 'signin.dart';
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
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new Main(),
        title: new Text('fortyfive',
          style: new TextStyle(
            fontFamily: 'Roboto Slab',
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white30
          ),
        ),
        backgroundColor: Colors.black,
        loaderColor: Colors.white30,
    );
  }
}

class Main extends StatelessWidget {
  Builder userStatus(String status) {
    return Builder(
      builder: (context) => FlatButton(
        splashColor: Colors.white30,
        onPressed: () {
          if(status == 'REGISTER')
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Register()
                )
            );
          else
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => SignIn()
                )
            );
        },
        child: Card(
            color: Colors.black,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Center(child: Text(
                    status,
                    style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        color: Colors.white,
                        fontSize: 24
                    ),
                  )),
                )
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
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
            backgroundColor: Colors.black,
            body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    userStatus('REGISTER'),
                    userStatus('SIGN IN')
                  ],
                )
            )
        )
    );
  }
}
