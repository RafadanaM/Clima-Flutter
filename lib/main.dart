import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: LoadingScreen.routeName,
      routes: {
        LoadingScreen.routeName: (context) => LoadingScreen(),
        LocationScreen.routeName: (context) => LocationScreen(),
      },
    );
  }
}
