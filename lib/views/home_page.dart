import 'package:app_rent_bike/Widgets/TabSelector/tab_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.appMenu}) : super(key: key);
  final String appMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
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
              appMenu,
              style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 36),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const TabSelector(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /* final String host = defaultTargetPlatform == TargetPlatform.android ? '10.0.2.2:8085' : 'localhost:8085';

          FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false);
          final FirebaseFirestore firestore = FirebaseFirestore.instance;

          final DocumentSnapshot resp = await firestore.doc('/data/gIpx7SKC4lq73rDOwicK').get(); */
        },
      ),
    );
  }
}
