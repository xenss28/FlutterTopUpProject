import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Card(
              child: Image.asset('images/ragnarok.jpg')
            ),
          ),
          Container(
            child: Card(
              child: ListTile(
                title: Text('Ragnarok X Disc 30%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                textAlign: TextAlign.center,
                ),
                subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.',
                style: TextStyle(fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              )
            ),
          ),

        ],
      /**/
      ),
      
    );
    
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Card(
              child: Image.asset('images/genshin.jpg')
            ),
          ),
          Container(
            child: Card(
              child: ListTile(
                title: Text('Genshin Impact Disc 50%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                textAlign: TextAlign.center,
                ),
                subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.',
                style: TextStyle(fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              )
            ),
          ),

        ],
      /**/
      ),
      
    );
    
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Card(
              child: Image.asset('images/valo.png')
            ),
          ),
          Container(
            child: Card(
              child: ListTile(
                title: Text('Valorant Poin Disc 10%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                textAlign: TextAlign.center,
                ),
                subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.',
                style: TextStyle(fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              )
            ),
          ),

        ],
      /**/
      ),
      
    );
    
  }
}
