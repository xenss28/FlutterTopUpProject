import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/detail_voucher.dart';
import 'package:flutterproject/Pages/home.dart';
import 'package:flutterproject/Pages/login.dart';
import 'package:flutterproject/Pages/news&promotion.dart';

class VoucherPage extends StatefulWidget {
  final String username;

  VoucherPage({Key? key, required this.username}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return VoucherPageState();
  }
}

class VoucherPageState extends State<VoucherPage> {
  var ctrlUser = TextEditingController();
  var ctx = null;
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
        ctx, MaterialPageRoute(builder: (ctx) => NewsandPromotion(username: ctrlUser.text,)));
  }

  void logout() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => LoginPage()));
  }
  void ML() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => DetailVoucherML()));
  }
  void FF() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => DetailVoucherFF()));
  }
  void VL() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => DetailVoucherVL()));
  }
  void RX() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => DetailVoucherRX()));
  }
  void GI() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => DetailVoucherGI()));
  }

  

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Mobile Legends',
              ),
              Tab(
                text: 'Free Fire',
              ),
              Tab(
                text: 'Valorant',
              ),
              Tab(
                text: 'Ragnarok X',
              ),
              Tab(
                text: 'Genshin Impact',
              ),
            ],
          ),
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
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('1050'),
                  subtitle: Text('Rp 225.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('1412'),
                  subtitle: Text('Rp 305.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('2195'),
                  subtitle: Text('Rp 445.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('2539'),
                  subtitle: Text('Rp 520.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('3075'),
                  subtitle: Text('Rp 630.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('3688'),
                  subtitle: Text('Rp 735.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('5532'),
                  subtitle: Text('Rp 1.100.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  leading: Image.asset('images/alokml.png'),
                  title: Text('9288'),
                  subtitle: Text('Rp 1.830.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => ML()),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('790'),
                  subtitle: Text('Rp 104.500'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('860'),
                  subtitle: Text('Rp 114.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('1075'),
                  subtitle: Text('Rp 142.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('1440'),
                  subtitle: Text('Rp 190.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('2000'),
                  subtitle: Text('Rp 260.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('2720'),
                  subtitle: Text('Rp 356.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('3440'),
                  subtitle: Text('Rp 452.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
                ListTile(
                  leading: Image.asset('images/ffdm.png'),
                  title: Text('4000'),
                  subtitle: Text('Rp 522.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => FF()),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('625'),
                  subtitle: Text('Rp 58.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('1125'),
                  subtitle: Text('Rp 101.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('1650'),
                  subtitle: Text('Rp 145.500'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('2275'),
                  subtitle: Text('Rp 203.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('2775'),
                  subtitle: Text('Rp 246.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('3400'),
                  subtitle: Text('Rp 290.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('4025'),
                  subtitle: Text('Rp 348.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
                ListTile(
                  leading: Image.asset('images/vp.jpg'),
                  title: Text('5050'),
                  subtitle: Text('Rp 435.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => VL()),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('1190'),
                  subtitle: Text('Rp 234.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('2240'),
                  subtitle: Text('Rp 450.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('3880'),
                  subtitle: Text('Rp 751.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('7760'),
                  subtitle: Text('Rp 1.502.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('11640'),
                  subtitle: Text('Rp 2.253.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('15520'),
                  subtitle: Text('Rp 3.004.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('19400'),
                  subtitle: Text('Rp 3.755.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
                ListTile(
                  leading: Image.asset('images/ragnarokdm.png'),
                  title: Text('23280'),
                  subtitle: Text('Rp 4.506.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => RX()),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('1190'),
                  subtitle: Text('Rp 234.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('2240'),
                  subtitle: Text('Rp 450.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('3880'),
                  subtitle: Text('Rp 751.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('7760'),
                  subtitle: Text('Rp 1.502.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('11640'),
                  subtitle: Text('Rp 2.253.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('15520'),
                  subtitle: Text('Rp 3.004.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('19400'),
                  subtitle: Text('Rp 3.755.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
                ListTile(
                  leading: Image.asset('images/genshindm.png'),
                  title: Text('23280'),
                  subtitle: Text('Rp 4.506.000'),
                  trailing: FlatButton(
                      child: Text('Detail'),
                      color: Colors.blue,
                      onPressed: () => GI()),
                ),
              ],
            ),
          ],
        ),
        //backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
