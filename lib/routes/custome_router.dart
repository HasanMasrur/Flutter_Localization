import 'package:Flutter_Localization/pages/home_page%20.dart';
import 'package:Flutter_Localization/routes/route_name.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
