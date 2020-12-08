import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutPage();
  }
}

class _AboutPage extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutPage'),
      ),
      body: Container(),
    );
  }
}
