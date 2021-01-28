import 'package:flutter_flavor/flutter_flavor.dart';

import 'app/app.dart';
import 'injection.dart';

// Si va a trabjar con Firebase
// Agregue su archivo "google-services.json" para el modo produccion en "android\app\src\tst"
// El cual debe incluir el nombre del paquete para modo test.
// mas info del flavor en el archivo: "android\app\build.gradle"
Future<void> main() async {
  FlavorConfig(
    name: 'Test',
    location: BannerLocation.bottomStart,
    color: Colors.green,
    variables: {},
  );

  configureInjection(const Env.test());

  runApp(FlavorBanner(
    child: const MyApp(
      titleApp: 'Demo Renta de Bicicleta',
    ),
  ));
}
