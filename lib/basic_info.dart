import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'battery.dart';
import 'diagnosis.dart';
import 'service.dart';

class BasicInformation extends StatefulWidget {
  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {

  Row tableContent(String name, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black45
          ),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),
        )
      ],
    );
  }

  Widget _createFooterItem({IconData icon, String text, GestureTapCallback onTap}){
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

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
              backgroundColor: Color.fromRGBO(215, 215, 215, 1),
              drawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.perm_identity,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          Text(
                            'UEFF001',
                            style: TextStyle(
                              fontFamily: 'Roboto Slab',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(215, 215, 215, 1),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        ListTile(
                            title: Text('Battery Status'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Battery()
                                  )
                              );
                            }
                        ),
                        ListTile(
                            title: Text('Motor Health'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Battery()
                                  )
                              );
                            }
                        ),
                        ListTile(
                            title: Text('Diagnosis'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Diagnosis()
                                  )
                              );
                            }
                        ),
                        ListTile(
                            title: Text('Services'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Service()
                                  )
                              );
                            }
                        ),
                        ListTile(
                            title: Text('Blogs'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Battery()
                                  )
                              );
                            }
                        ),
                        ListTile(
                            title: Text('Sign Out'),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Service()
                                  )
                              );
                            }
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset('images/full_vehicle.jpg'),
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1,
                              right: MediaQuery.of(context).size.width * 0.1,
                              top: MediaQuery.of(context).size.height * 0.1,
                            ),
                            child: Column(
                              children: <Widget>[
                                tableContent('Total Distance', '1600 Kms'),
                                tableContent('Distance / Ride', '30 Kms'),
                                tableContent('Times Charged', '27'),
                                tableContent('Service Request', '0'),
                                tableContent('Vehicle Health', '98 %'),
                              ],
                            )
                        ),

                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.lock,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}
