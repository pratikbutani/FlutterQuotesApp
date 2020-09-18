import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:share/share.dart';

import './Quote.dart';
import './database_helper.dart';

class QuoteData extends StatefulWidget {
  @override
  _QuoteDataState createState() => _QuoteDataState();
}

// call the API and fetch the response
Future<Quote> fetchQuote() async {
  final response =
      await http.get('http://192.168.0.75:8080/gujju_quotes/api/get_quote.php');
  if (response.statusCode == 200) {
    return Quote.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load Quote');
  }
}

class _QuoteDataState extends State<QuoteData>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  Future<Quote> quote;
  DataBaseHelper dbHelper;
  Future<List<Quote>> wholeQuotes;

  @override
  void initState() {
    super.initState();
    quote = fetchQuote();
    dbHelper = DataBaseHelper();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder<Quote>(
      future: quote,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: Text(
                    snapshot.data.quoteText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'quoteScript'),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  // '- ${snapshot.data.quoteAuthor} -',
                  '- Unknown -',
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontFamily: 'quoteScript'),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Share.share(
                            '${snapshot.data.quoteText}--${snapshot.data.quoteAuthor}');
                      },
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Quote q = Quote(
                            quoteId: null,
                            quoteText: snapshot.data.quoteText,
                            quoteAuthor: snapshot.data.quoteAuthor);
                        dbHelper.saveQuote(q);
                        final snackBar = SnackBar(
                          backgroundColor: Colors.deepOrangeAccent,
                          content: Text(
                            'Added to favorites',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show a loading spinner.
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
