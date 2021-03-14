import 'package:flutter/material.dart';
import 'package:navigator/pages/home.dart';
import 'package:navigator/pages/sample1.dart';
import 'package:navigator/pages/sample2.dart';
import 'package:navigator/pages/sample3.dart';
import 'package:navigator/models/page_details.dart';
import 'package:navigator/pages/sample4.dart';

class Path {
  static Route<dynamic> getPath(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/1':
        return MaterialPageRoute(builder: (_) => SamplePage1());
      case '/2':
        return MaterialPageRoute(builder: (_) => SamplePage2());
      case '/3':
        return MaterialPageRoute(builder: (_) => SamplePage3(args));
      case '/4':
        final PageData content = settings.arguments;
        return MaterialPageRoute(
          builder: (_) {
            return SamplePage4(
              heading: content.heading,
              data: content.data,
            );
          },
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Page doesn\'t exist',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
