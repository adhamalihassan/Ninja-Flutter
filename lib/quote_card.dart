import 'quote.dart';
import 'package:flutter/material.dart';

void test() {}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(height: 6.0),
              TextButton.icon(
                onPressed: delete,
                icon: Icon(
                  Icons.delete,
                  color: Colors.redAccent, // Set the icon color to red
                ),
                label: Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.redAccent, // Set the text color to red
                    fontWeight: FontWeight.bold, // Set the font weight
                    fontSize: 16.0, // Set the font size
                    fontFamily: 'IndieFlower',
                  ),
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(Colors.redAccent.withOpacity(0.5)), // Set the overlay color when pressed
                ),
              )

            ],
          ),
        ));
  }
}
