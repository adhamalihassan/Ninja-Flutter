import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('choose location'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
