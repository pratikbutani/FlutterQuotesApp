import 'package:flutter/material.dart';

import 'favorite_quotes.dart';
import 'quotes_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage('images/background.webp'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elaichi',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigoAccent,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 2,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text(
          'એલચી - Best Gujju Quotes',
          style: TextStyle(fontFamily: 'quoteScript', fontSize: 22.0),
        ),
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: TextStyle(fontFamily: 'quoteScript', fontSize: 18.0),
          tabs: <Widget>[
            Tooltip(
              message: 'Daily એલચી',
              child: Tab(
                text: 'Random એલચી',
                // icon: Icon(
                //   Icons.today,
                // ),
              ),
            ),
            Tooltip(
                message: 'Favorite એલચી',
                child: Tab(
                  text: 'Favorite એલચી',
                  // icon: Icon(Icons.favorite),
                )),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Stack(children: <Widget>[
            Center(
              child: Card(
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
                    child: Image.asset(
                      'images/background2.webp',
                      width: size.width,
                      height: size.height / 2,
                      fit: BoxFit.fitWidth,
                    )),
              ),
            ),
            QuoteData(),
          ]),
          FavoriteQuotes(),
        ],
      ),
    );
  }
}
