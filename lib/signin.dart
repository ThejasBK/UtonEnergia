

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'uniqueid.dart';
import 'signin.dart';
import 'register.dart';
import 'test.dart';
import 'overview.dart';
import 'package:shared_preferences/shared_preferences.dart';
//Splash screen changed in android/app/src/main/res/drawable -  android
//Splash screen changed in ios/Runner/Assets.xcassets/launchImage.imageset - iOS

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   var username = preferences.getString('username');
//   runApp(MaterialApp(home: username == null ? SignIn() : Overview())
//   );
// }

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
                    builder: (context) => MyHomePage()
                )
            );
          else
            Navigator.push(context,
                MaterialPageRoute(
                    // builder: (context) => SignIn()
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
                    status,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 1,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(child: Image.asset('images/tyre.jpg')),
                    Container(
                      child: Column(
                        children: <Widget>[
                          userStatus('REGISTER'),
                          userStatus('SIGN IN')
                        ],
                      ),
                    )
                  ],
                )
            )
        )
    );
  }
}
