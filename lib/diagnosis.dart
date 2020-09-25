import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

//Opening camera. Need to work on processing

class Diagnosis extends StatefulWidget {
  @override
  _DiagnosisState createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image Captured.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(215, 215, 215, 1),
            title: Text(
                'fortyfive',
              style: TextStyle(fontSize: 20, color: Colors.black)
            ),
            elevation: 0,
          ),
          backgroundColor: Color.fromRGBO(215, 215, 215, 1),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(_image),
              ),
              Center(
                child: Center(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.camera),
                        color: Colors.white,
                    onPressed: () {
                      getImage();
                    }
                ),
              ))),
            ],
          ),
        ),
      ),
    );
  }
}
