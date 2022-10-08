import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/home.dart';

class DetailVoucherML extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherMLState();
  }
}

class DetailVoucherMLState extends State<DetailVoucherML> {
  int currentIndex = 0;
  var ctx = null;
  var ctrlUser = TextEditingController();
  var _ctrlPID = TextEditingController();
  void _validate() {
    late Widget page;
    if (_ctrlPID.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be filled"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (double.tryParse(_ctrlPID.text) == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be numeric"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Success!!"),
            content: new Text("Success!"),
            actions: <Widget>[
              new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.push(
                        ctx,
                        MaterialPageRoute(
                            builder: (_ctx) =>
                                HomePage(username: ctrlUser.text)));
                  }),
            ],
          );
        },
      );
    }
    _ctrlPID.clear();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Container(
        child: ListTile(
          trailing: Image.asset('images/logoafter.png'),
        ),
      )
          //Text('Detail Voucher'),
          ),
      body: Column(
        children: [
          Image.asset('images/mole.jpeg'),
          ListTile(
            title: Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Mobile Legend',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insert ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: _validate,
              child: Text('Button')),
        ],
      ),
    );
  }
}

class DetailVoucherFF extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherFFState();
  }
}

class DetailVoucherFFState extends State<DetailVoucherFF> {
  int currentIndex = 0;
  var ctx = null;
  var ctrlUser = TextEditingController();
  var _ctrlPID = TextEditingController();
  void _validate() {
    late Widget page;
    if (_ctrlPID.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be filled"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (double.tryParse(_ctrlPID.text) == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be numeric"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Success!!"),
            content: new Text("Success!"),
            actions: <Widget>[
              new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.push(
                        ctx,
                        MaterialPageRoute(
                            builder: (_ctx) =>
                                HomePage(username: ctrlUser.text)));
                  }),
            ],
          );
        },
      );
    }
    _ctrlPID.clear();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Container(
        child: ListTile(
          trailing: Image.asset('images/logoafter.png'),
        ),
      )
          //Text('Detail Voucher'),
          ),
      body: Column(
        children: [
          Image.asset('images/ff.jpg'),
          ListTile(
            title: Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Free Fire',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insert ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: _validate,
              child: Text('Button')),
        ],
      ),
    );
  }
}

class DetailVoucherVL extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherVLState();
  }
}

class DetailVoucherVLState extends State<DetailVoucherVL> {
  int currentIndex = 0;
  var ctx = null;
  var ctrlUser = TextEditingController();
  var _ctrlPID = TextEditingController();
  void _validate() {
    late Widget page;
    if (_ctrlPID.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be filled"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (double.tryParse(_ctrlPID.text) == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be numeric"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Success!!"),
            content: new Text("Success!"),
            actions: <Widget>[
              new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.push(
                        ctx,
                        MaterialPageRoute(
                            builder: (_ctx) =>
                                HomePage(username: ctrlUser.text)));
                  }),
            ],
          );
        },
      );
    }
    _ctrlPID.clear();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Container(
        child: ListTile(
          trailing: Image.asset('images/logoafter.png'),
        ),
      )
          //Text('Detail Voucher'),
          ),
      body: Column(
        children: [
          Image.asset('images/valo.png'),
          ListTile(
            title: Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Valorant',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insert ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: _validate,
              child: Text('Button')),
        ],
      ),
    );
  }
}

class DetailVoucherRX extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherRXState();
  }
}

class DetailVoucherRXState extends State<DetailVoucherRX> {
  int currentIndex = 0;
  var ctx = null;
  var ctrlUser = TextEditingController();
  var _ctrlPID = TextEditingController();
  void _validate() {
    late Widget page;
    if (_ctrlPID.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be filled"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (double.tryParse(_ctrlPID.text) == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be numeric"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Success!!"),
            content: new Text("Success!"),
            actions: <Widget>[
              new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.push(
                        ctx,
                        MaterialPageRoute(
                            builder: (_ctx) =>
                                HomePage(username: ctrlUser.text)));
                  }),
            ],
          );
        },
      );
    }
    _ctrlPID.clear();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Container(
        child: ListTile(
          trailing: Image.asset('images/logoafter.png'),
        ),
      )
          //Text('Detail Voucher'),
          ),
      body: Column(
        children: [
          Image.asset('images/rGNrok.jpg'),
          ListTile(
            title: Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Ragnarok X',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insert ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: _validate,
              child: Text('Button')),
        ],
      ),
    );
  }
}

class DetailVoucherGI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherGIState();
  }
}

class DetailVoucherGIState extends State<DetailVoucherGI> {
  int currentIndex = 0;
  var ctx = null;
  var ctrlUser = TextEditingController();
  var _ctrlPID = TextEditingController();
  void _validate() {
    late Widget page;
    if (_ctrlPID.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be filled"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (double.tryParse(_ctrlPID.text) == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be numeric"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Success!!"),
            content: new Text("Success!"),
            actions: <Widget>[
              new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.push(
                        ctx,
                        MaterialPageRoute(
                            builder: (_ctx) =>
                                HomePage(username: ctrlUser.text)));
                  }),
            ],
          );
        },
      );
    }
    _ctrlPID.clear();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Container(
        child: ListTile(
          trailing: Image.asset('images/logoafter.png'),
        ),
      )
          //Text('Detail Voucher'),
          ),
      body: Column(
        children: [
          Image.asset('images/genshin.jpg'),
          ListTile(
            title: Text(
              'Voucher',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Genshin Impact',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insert ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: _validate,
              child: Text('Button')),
        ],
      ),
    );
  }
}
