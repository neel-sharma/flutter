import 'package:flutter/material.dart';
import 'package:navigator/models/page_details.dart';

class SamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Page 1'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            color: Colors.blue,
            onPressed: () => Navigator.of(context).pushNamed(
              '/',
            ),
            child: Text('Home'),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () => Navigator.of(context).pushNamed(
              '/2',
            ),
            child: Text('Sample Page 2'),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () => Navigator.of(context)
                .pushNamed('/3', arguments: 'Sample Page 3'),
            child: Text('Sample Page 3'),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () => Navigator.of(context)
                .pushNamed('/4', arguments: PageData('Sample page 4', 'Home')),
            child: Text('Sample Page 4'),
          ),
        ],
      )),
    );
  }
}
