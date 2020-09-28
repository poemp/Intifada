import 'package:flutter/material.dart';
import 'package:intifada/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterAPP',
        debugShowCheckedModeBanner: false,
        // home: LoginPage(),
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute
    );
  }
}
