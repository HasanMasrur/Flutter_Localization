import 'package:Flutter_Localization/routes/custome_router.dart';
import 'package:Flutter_Localization/routes/route_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRouter.allRoutes,
      initialRoute: homeRoute,
    );
  }
}
