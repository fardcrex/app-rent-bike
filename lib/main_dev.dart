import 'package:app_rent_bike/views/init_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redux/redux.dart';

import 'Features/DataPrueba/Application/get_data.dart';
//import 'Features/DataPrueba/Infrastructure/cache_repository.dart';
import 'Features/DataPrueba/Infrastructure/cache_repository.dart';
import 'Redux/middleware/app_middleware.dart';
import 'Redux/reducers/app_state_reducer.dart';
import 'Redux/state/app_state.dart';

Future<void> main() async {
  final dataPruebaRepository = CacheRepository();
  //setupLocator(firestore);
  // configureInjection(Env.dev);
  runApp(MyApp(
    store: Store<AppState>(
      appReducer,
      initialState: AppState.initial(),
      middleware: [
        ...createStoreTodosMiddleware(getDataPrueba: GetData(dataPruebaRepository)),
      ],
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return StoreProvider(
      key: key,
      store: store,
      child: MaterialApp(
        title: 'Renta de Bicicletas',
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.red,
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
}
