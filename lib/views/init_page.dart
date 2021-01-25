import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const Text(
              'This is Google Fonts',
              style: TextStyle(fontSize: 36),
            ),
            Text(
              'This is bodyText2 Fonts',
              style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
