import 'package:flutter/material.dart';
import 'package:intifada/pages/autograph.dart';
import 'package:intifada/pages/my_page.dart';
import 'package:intifada/pages/search_page.dart';
import 'package:intifada/pages/travel_page.dart';
import 'navigator/tab_navigator.dart';

final staticRoutes = {
  '/': (context) => TabNavigator(),
  '/login': (context) => Autograph() ,
  '/search': (context) => SearchPage() ,
  '/travelPage': (context) => TravelPage() ,
};

// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute =  (RouteSettings settings) {

  final String name = settings.name;
  final Function pageContentBuilder = staticRoutes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => 
            pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => 
            pageContentBuilder(context));
      return route;
    }
  }
};