import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_flavor/flutter_flavor.dart';

import 'app/app.dart';
import 'injection.dart';

//PUERTO DEL EMULADOR LOCAL DE FIREBASE
const portLocal = '8086';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FlavorConfig(
    name: 'Dev',
    color: Colors.orange[900],
    location: BannerLocation.bottomStart,
    variables: {
      'portForAndroid': '10.0.2.2:$portLocal',
      'portForAnothers': 'localhost:$portLocal',
    },
  );
  configureInjection(const Env.dev());

  runApp(FlavorBanner(
    child: const MyApp(
      titleApp: 'Renta de Bicicleta dev',
    ),
  ));
}
