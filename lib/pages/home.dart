import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text(
                  'Edit Location'
              )
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Berlin',
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text(
              '1:25 PM',
              style: TextStyle(
                fontSize: 66.0,
              )
          ),
        ],
      )),
    );
  }
}
