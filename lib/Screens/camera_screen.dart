import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Camara'),
      ),
    );
  }
}
