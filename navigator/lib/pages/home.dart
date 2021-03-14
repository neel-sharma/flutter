import 'package:flutter/material.dart';
import 'package:navigator/models/page_details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.blue,
              onPressed: () => Navigator.of(context).pushNamed(
                '/1',
              ),
              child: Text('Sample page 1'),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () => Navigator.of(context).pushNamed(
                '/2',
              ),
              child: Text('Sample page 2'),
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
              onPressed: () => Navigator.of(context).pushNamed('/4',
                  arguments: PageData('Sample page 4', 'Home')),
              child: Text('Sample Page 4'),
            ),
          ],
        )),
      ),
    );
  }
}
