import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redux/redux.dart';

import 'Redux/middleware/app_middleware.dart';
import 'Redux/reducers/app_state_reducer.dart';
import 'Redux/state/app_state.dart';
import 'views/init_page.dart';
export 'package:redux/redux.dart';
export 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final String titleApp;
  const MyApp({Key key, @required this.titleApp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return StoreProvider(
      key: key,
      store: Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
        middleware: [
          ...createStoreTodosMiddleware(),
        ],
      ),
      child: MaterialApp(
        title: titleApp ?? 'title App',
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: const Color(0xff5068a9),
          accentColor: const Color(0xff86A6DF),
          focusColor: const Color(0xff324e7b),
          canvasColor: const Color(0xfffff5f5),

          textTheme: GoogleFonts.sourceCodeProTextTheme(textTheme).copyWith(
            headline6: GoogleFonts.alegreya(textStyle: textTheme.headline6, color: const Color(0xff86A6DF)),
          ),
        ),
        home: const InitPage(),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('titleApp', titleApp));
  }
}
