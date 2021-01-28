import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'app/app.dart';

import 'injection.dart';

//Agregar su archivo "google-services.json" para el modo produccion en "android\app\src\prod"
// El cual debe incluir el nombre del paquete para modo Produccion.
// mas info del flavor en el archivo: "android\app\build.gradle"
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FlavorConfig(name: 'Prod', variables: {});

  configureInjection(const Env.prod());

  runApp(const MyApp(
    titleApp: 'Renta de Bicicleta',
  ));
}
