import 'package:flutter/material.dart';
import 'package:contato/pages/pages.dart';
import 'package:contato/utils/constants/constants.dart';
import 'package:universal_html/html.dart' as html;

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (html.window.location.pathname) {
      case votreRoute:
        html.window.history.pushState(null, votreTitle, votreRoute);
        return MaterialPageRoute(builder: (context) => VotrePage());
      default:
        html.window.history.pushState(null, homeTitle, homeRoute);
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
