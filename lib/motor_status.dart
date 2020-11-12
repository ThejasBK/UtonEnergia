import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'battery.dart';
import 'diagnosis.dart';
import 'service.dart';
import 'motor_status.dart';

class GaugeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// Represents MyHomePage class
class MyHomePage extends StatefulWidget {
  /// Creates the instance of MyHomePage
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                                builder: (context) => GaugeApp()
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
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SfRadialGauge(
              title: GaugeTitle(
                  text: 'Motor Health',
                  textStyle: const TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Roboto Slab')),
              axes: <RadialAxis>[
                RadialAxis(minimum: 0, maximum: 100, showLabels: false, showTicks: false, ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: 0,
                      endValue: 35,
                      color: Colors.red,
                      startWidth: 0,
                      endWidth: 10),
                  GaugeRange(
                      startValue: 35,
                      endValue: 80,
                      color: Colors.yellow,
                      startWidth: 10,
                      endWidth: 20),
                  GaugeRange(
                      startValue: 80,
                      endValue: 100,
                      color: Colors.green,
                      startWidth: 20,
                      endWidth: 30)
                ],
                    pointers: <GaugePointer>[NeedlePointer(value: 60,
                    needleStartWidth: 1, needleEndWidth: 5,
                    knobStyle: KnobStyle(knobRadius: 10,
                        sizeUnit: GaugeSizeUnit.logicalPixel, color: Colors.red))
                ],
                    annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Container(
                          child: const Text('60.0',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))),
                      angle: 90,
                      positionFactor: 0.5)
                ])
              ]),
        ));
  }
}