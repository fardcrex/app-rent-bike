import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/app/Widgets/TabSelector/tab_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.appMenu, this.dataPrueba}) : super(key: key);
  final String appMenu;
  final List<String> dataPrueba;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text('Renta de bicicleta'),
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
              style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 30),
            ),
            ...dataPrueba
                .map((value) => Text(
                      value,
                      style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 30),
                    ))
                .toList()
          ],
        ),
      ),
      bottomNavigationBar: const TabSelector(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          StoreProvider.of<AppState>(context).dispatch(LoadDataAction());
          /* final String host = defaultTargetPlatform == TargetPlatform.android ? '10.0.2.2:8085' : 'localhost:8085';

          FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false);
          final FirebaseFirestore firestore = FirebaseFirestore.instance;

          final DocumentSnapshot resp = await firestore.doc('/data/gIpx7SKC4lq73rDOwicK').get(); */
        },
      ),
    );
  }
}
