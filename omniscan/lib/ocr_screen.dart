import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'lib/camera.dart';

class OCRScreen extends StatefulWidget {
  const OCRScreen({ Key? key }) : super(key: key);

  @override
  _OCRScreenState createState() => _OCRScreenState();
}

class _OCRScreenState extends State<OCRScreen> {
  Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  Navigator.push(
                      context,
                      MaterialPageRoute(
                      	builder: (context) => TakePictureScreen(camera: firstCamera)
                      ),
                    );

}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMAGE TO TEXT"),
      ),
      body: Center(
      
      ),
     
    );
  }

}