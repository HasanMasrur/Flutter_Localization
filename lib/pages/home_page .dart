import 'package:Flutter_Localization/routes/route_name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        color: Colors.blue,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, aboutRoute);
          },
          child: Text('Navigater to about page '),
        ),
      ),
    );
  }
}
