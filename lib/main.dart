import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  List<Quote> quotes = [
    Quote(
      text: "Be yourself; everyone else is already taken.",
      author: "Oscar Wilde",
    ),
    Quote(
      text:
          "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
      author: "Albert Einstein",
    ),
    Quote(
      text:
          "You know you're in love when you can't fall asleep because reality is finally better than your dreams.",
      author: "Dr. Seuss",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(fontFamily: 'IndieFlower'),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: quotes.map((quote) {
            return QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                });
          }).toList(),
        ),
      ),
    );
    ;
  }
}
