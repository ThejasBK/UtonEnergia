import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
//import 'package:camera/camera.dart';
//import 'package:simple_permissions/simple_permissions.dart';

//List<CameraDescription> cameras;
//Permission PermissionFromString(String value) {
//  var permission;
//  for(Permission item in Permission.values) {
//    if(item.toString() == value) {
//      permission = true;
//      break;
//    }
//  }
//  return permission;
//}

void main() async {

  //cameras = await availableCameras();

//  await SimplePermissions.requestPermission(PermissionFromString('Permission.WriteExternalStorage'));
//  await SimplePermissions.requestPermission(PermissionFromString('Permission.Camera'));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
