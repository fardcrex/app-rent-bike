import 'package:app_rent_bike/app/Widgets/TabSelector/tab_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.titlePage, this.body, this.action}) : super(key: key);
  final String titlePage;
  final List<Widget> action;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final _widthView = MediaQuery.of(context).size.width;
    final _heightView = MediaQuery.of(context).size.height;
    final isPortrait = _widthView < _heightView;

    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: isPortrait
            ? AppBar(
                title: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 45),
                      Text(
                        titlePage,
                        //   textAlign: TextAlign.start,
                        style: GoogleFonts.alegreya(
                          color: Theme.of(context).primaryColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Theme.of(context).canvasColor,
                actions: [
                  SizedBox(
                    width: 45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: action,
                    ),
                  )
                ],
              )
            : null,
        body: SafeArea(
          child: body,
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.only(
            bottom: 12,
            top: 10,
            left: 20,
            right: 20,
          ),
          child: TabSelector(),
        ),
        /*  floatingActionButton: FloatingActionButton(
          onPressed: () async {
            StoreProvider.of<AppState>(context).dispatch(LoadDataAction());
            /* final String host = defaultTargetPlatform == TargetPlatform.android ? '10.0.2.2:8085' : 'localhost:8085';

            FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false);
            final FirebaseFirestore firestore = FirebaseFirestore.instance;

            final DocumentSnapshot resp = await firestore.doc('/data/gIpx7SKC4lq73rDOwicK').get(); */
          },
        ), */
      ),
    );
  }
}
