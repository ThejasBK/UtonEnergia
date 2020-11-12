import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
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
      body: Column(
        children: <Widget>[
          Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'fortyfive',
                              style: TextStyle(
                                  fontFamily: 'Roboto Slab',
                                  color: Colors.black87,
                                  fontSize: 24
                              ),
                            ),
                            Icon(
                              Icons.ac_unit
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'fortyfive',
                              style: TextStyle(
                                  fontFamily: 'Roboto Slab',
                                  color: Colors.black87,
                                  fontSize: 24
                              ),
                            ),
                            Icon(
                                Icons.ac_unit
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'fortyfive',
                              style: TextStyle(
                                  fontFamily: 'Roboto Slab',
                                  color: Colors.black87,
                                  fontSize: 24
                              ),
                            ),
                            Icon(
                                Icons.ac_unit
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
