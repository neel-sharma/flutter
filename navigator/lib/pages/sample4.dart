import 'package:flutter/material.dart';

class SamplePage4 extends StatelessWidget {
  final heading, data;

  const SamplePage4({
    Key key,
    @required this.heading,
    @required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(heading),
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
            child: Text(data),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () => Navigator.of(context).pushNamed(
              '/1',
            ),
            child: Text('Sample Page 1'),
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
        ],
      )),
    );
  }
}
