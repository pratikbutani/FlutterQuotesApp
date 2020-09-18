import 'package:flutter/material.dart';
import 'package:share/share.dart';

import './Quote.dart';
import './database_helper.dart';

class FavoriteQuotes extends StatefulWidget {
  @override
  _FavoriteQuotesState createState() => _FavoriteQuotesState();
}

class _FavoriteQuotesState extends State<FavoriteQuotes> {
  Future<List<Quote>> wholeQuotes;
  DataBaseHelper dbHelper;

  void initState() {
    super.initState();
    dbHelper = DataBaseHelper();
    fetchDatafromTable();
  }

  fetchDatafromTable() {
    setState(() {
      wholeQuotes = dbHelper.fetchSavedQuotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
        future: wholeQuotes,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.length > 0) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (builder, index) {
                    return Card(
                      margin: EdgeInsets.all(15),
                      shadowColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10,
                      child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Stack(children: <Widget>[
                            Image.asset(
                              'images/background2.webp',
                              width: size.width,
                              height: size.height / 2,
                              fit: BoxFit.fitWidth,
                            ),
                            Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(30.0),
                                  child: Text(
                                    snapshot.data[index].quoteText,
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
                                            '${snapshot.data[index].quoteText}--${snapshot.data[index].quoteAuthor}');
                                      },
                                    ),
                                    SizedBox(width: 20),
                                  ],
                                )
                              ],
                            ))
                          ])),
                    );

                    // ListTile(
                    //   title: Text(
                    //     snapshot.data[index].quoteText,
                    //     style: TextStyle(
                    //         fontSize: 20.0, fontFamily: 'quoteScript'),
                    //   ),
                    //   subtitle: Text(
                    //     snapshot.data[index].quoteAuthor,
                    //     style: TextStyle(
                    //         fontSize: 17.0, fontFamily: 'quoteScript'),
                    //   ),
                    //   trailing: IconButton(
                    //       icon: Icon(Icons.remove_circle),
                    //       color: Colors.red,
                    //       onPressed: () {
                    //         dbHelper.deleteQuoteFromFavorite(
                    //             snapshot.data[index].quoteId);
                    //         fetchDatafromTable();
                    //         final removedSnackBar = SnackBar(
                    //           backgroundColor: Colors.black,
                    //           content: Text(
                    //             'Removed from Favorites',
                    //             style: TextStyle(
                    //                 color: Colors.white, fontSize: 15.0),
                    //           ),
                    //         );
                    //         Scaffold.of(context)
                    //             .showSnackBar(removedSnackBar);
                    //       }),
                    // ),
                    // );
                  });
            } else {
              return Center(
                child: Text(
                  'No Data in the Favorites',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'quoteScript'),
                ),
              );
            }
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to Load Favorites'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
