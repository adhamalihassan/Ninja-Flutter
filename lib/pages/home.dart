import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    print(ModalRoute?.of(context)?.settings?.arguments.runtimeType);
    data = ModalRoute?.of(context)?.settings?.arguments as Map;
    print(data);
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    return Scaffold(
        body: SafeArea(
            child: Stack(children: <Widget>[
      Image.asset(
        'assets/$bgImage', // Replace with your image path
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      Column(
        children: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location')),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                data['location'],
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text(data['time'],
              style: TextStyle(
                fontSize: 66.0,
              )),
        ],
      )
    ])));
  }
}
