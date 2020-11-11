import 'package:flutter/material.dart';
import 'main.dart';

class Opening extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color.fromRGBO(215, 215, 215, 1),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: Image.asset('images/full_vehicle.jpg')),
                Text(
                    'fortyfive',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Roboto Slab',
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                    'Meet the fortyfive bikes, electric motor & portable batteries, smart locking system, predictive maintenance and plenty of other specs to explore the world neatly.',
                    style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto Slab'
                  ),
                  textAlign: TextAlign.justify,
                ),
                Builder(
                  builder: (context) => RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => SignIn()
                          )
                      );
                    },
                    elevation: 2.0,
                    fillColor: Colors.black,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
                  //     FlatButton(
                  //   shape: CircleBorder(),
                  //   onPressed: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(
                  //             builder: (context) => SignIn()
                  //         )
                  //     );
                  //   },
                  //   child: Card(
                  //       color: Colors.black87,
                  //       elevation: 0,
                  //       child: ListTile(
                  //         title: Center(child: Text(
                  //           '->',
                  //           style: TextStyle(
                  //             fontFamily: 'Roboto Slab',
                  //             color: Colors.white,
                  //             fontSize: 14,
                  //             // fontWeight: FontWeight.bold
                  //           ),
                  //         )),
                  //       )
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
