import 'package:flutter/material.dart';
import 'package:ussd_app/screens/home/ui/home_page.dart';
import 'package:ussd_app/screens/internet_collections/ui/internet_collections_page.dart';

class RoutName {
  static const home = "/home";
  static const internetCollections = "/internetCollections";
}

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case RoutName.home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case RoutName.internetCollections:
        return MaterialPageRoute(
          builder: (context) => InternetCollectionsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(),
        );
    }
  }

 }
