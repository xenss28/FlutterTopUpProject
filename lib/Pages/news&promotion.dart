import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/cardlist.dart';
import 'package:flutterproject/Pages/home.dart';
import 'package:flutterproject/Pages/login.dart';
import 'package:flutterproject/Pages/voucher.dart';

class NewsandPromotion extends StatefulWidget {
  final String username;

  NewsandPromotion({Key? key, required this.username}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return NewsandPromotionsState();
  }
}

class NewsandPromotionsState extends State<NewsandPromotion> {
  var ctx = null;
  var ctrlUser = TextEditingController();
  int _currentIndex = 0;

  List cardList = [Item1(), Item2(), Item3()];
  void home() {
    Navigator.push(ctx,
        MaterialPageRoute(builder: (ctx) => HomePage(username: ctrlUser.text)));
  }

  void voucher() {
    Navigator.push(
        ctx,
        MaterialPageRoute(
            builder: (ctx) => VoucherPage(
                  username: ctrlUser.text,
                )));
  }

  void newsandromotion() {
    Navigator.push(
        ctx,
        MaterialPageRoute(
            builder: (ctx) => NewsandPromotion(
                  username: ctrlUser.text,
                )));
  }

  void logout() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: ListTile(
              title: Text(
                'Hello,' + widget.username,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              trailing: Image.asset('images/logoafter.png'),
            ),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                onTap: () => home(),
              ),
              ListTile(
                title: Text('Voucher'),
                onTap: () => voucher(),
              ),
              ListTile(
                title: Text('News & Promotion'),
                onTap: () => newsandromotion(),
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text(
                      'Logout',
                    ),
                    onTap: () => logout(),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: CarouselSlider(
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.blueAccent,
                  child: card,
                ),
              );
            });
          }).toList(),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ));
  }
}
