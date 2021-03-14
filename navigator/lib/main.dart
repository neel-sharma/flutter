import 'package:navigator/navigation/navigator.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Path.getPath,
    );
  }
}
