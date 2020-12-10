import 'package:flutter/material.dart';
import 'package:contato/repositories/pages_repository.dart';
import 'package:universal_html/html.dart' as html;

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var routeName = html.window.location.pathname;

    if (routesList.contains(routeName)) {
      var index = routesList.indexWhere((route) => (route == routeName));
      html.window.history.pushState(null, titlesList[index], routesList[index]);
      html.window.onPopState.listen((html.PopStateEvent e) {
        html.window.history.go(1);
      });
      return MaterialPageRoute(builder: (context) => pagesList[index]);
    } else {
      html.window.history.pushState(null, titlesList[0], routesList[0]);
      return MaterialPageRoute(builder: (context) => pagesList[0]);
    }
  }
}
