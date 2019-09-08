import 'dart:io';
import 'package:flutter/material.dart';
import 'package:aws_ai/src/RekognitionHandler.dart';

File sourceImagefile; //load source image in this File object
String accessKey,
    secretKey,
    region; //load your aws account info in those variables

RekognitionHandler rekognition =
    new RekognitionHandler(accessKey, secretKey, region);
Future<String> labelsArray = rekognition.detectLabels(sourceImagefile);

class Dos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 70.0,
                child: Center(
                  child: Text("Dos"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
