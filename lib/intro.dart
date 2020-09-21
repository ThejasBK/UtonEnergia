import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(215, 215, 215, 1),
          appBar: AppBar(
              backgroundColor: Color.fromRGBO(215, 215, 215, 1),
              elevation: 0,
              title: Text(
                'My fortyfive',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              )
          ),
          body: Container(
            child: Stack(
              children: <Widget>[
                Image.asset('images/full_vehicle.jpg'),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1, top: MediaQuery.of(context).size.height * 0.2),
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Introduction()
                          )
                      );
                    },
                    color: Colors.transparent,
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
