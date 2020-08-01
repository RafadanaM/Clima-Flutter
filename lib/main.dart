import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case LocationScreen.routeName:
            return MaterialPageRoute(
              builder: (context) => LocationScreen(settings.arguments),
              settings: settings,
            );
          default:
            throw Exception('Unknown route');
        }
      },
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
