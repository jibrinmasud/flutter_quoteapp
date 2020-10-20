import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));

}
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

  List<Quote> quotes =[
    Quote(author:'oscar wild', text:'Be yourself everyone is already taken'),
    Quote(author:'oscar wild', text:'I have nothing to express except my genius'),
    Quote(author:'oscar wild', text:'The truth is rarely pure and never simple')
  ];




class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),

    );
  }
}
