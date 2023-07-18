import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First App',
          style: TextStyle(
            fontFamily: 'IndieFlower',
            fontWeight: FontWeight.bold,
            fontSize: 30.0
          ),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset('assets/download.jpeg'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
