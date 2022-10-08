import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/login.dart';
import 'package:flutterproject/Pages/news&promotion.dart';
import 'package:flutterproject/Pages/voucher.dart';

class HomePage extends StatefulWidget {
  final String username;

  HomePage({Key? key, required this.username}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var ctrlUser = TextEditingController();
  var ctx = null;
  void home() {
    Navigator.push(ctx,
        MaterialPageRoute(builder: (ctx) => HomePage(username: ctrlUser.text)));
  }

  void voucher() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => VoucherPage(username: ctrlUser.text,)));
  }

  void newsandromotion() {
    Navigator.push(
        ctx, MaterialPageRoute(builder: (ctx) => NewsandPromotion(username: ctrlUser.text,)));
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
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                Image.asset('images/mole.jpeg'),
                Image.asset('images/ff.jpg'),
                Image.asset('images/valo.png'),
                Image.asset('images/ragnarok.jpg'),
                Image.asset('images/genshin.jpg'),
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  initialPage: 2,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true),
            ),
            Container(
              child: Text(
                'About Us',
                style: TextStyle(color: Colors.purple[200], fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget',
                style: TextStyle(fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
