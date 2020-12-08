import 'package:Flutter_Localization/routes/route_name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _drowerpage(),
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: _mainform());
  }

  _mainform() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Form(
            key: _globalKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'required field';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'name',
                      hintText: 'Enter name'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'required field';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter email'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'required field';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'phone',
                      hintText: 'Enter phonenumber'),
                ),
                MaterialButton(
                    color: Colors.red,
                    child: Text(
                      'submit',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      if (!_globalKey.currentState.validate()) {
                        return;
                      }
                    })
              ],
            )),
      ),
    );
  }

  _drowerpage() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('about'),
            onTap: () {
              Navigator.pushNamed(context, aboutRoute);
            },
          )
        ],
      ),
    );
  }
}
