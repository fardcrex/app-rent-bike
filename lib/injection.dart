import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';
import 'package:app_rent_bike/src/Auth/Domain/services_auth.dart';
import 'package:app_rent_bike/src/Auth/Infrastructure/firestore_repository.dart';
import 'package:app_rent_bike/src/Auth/Infrastructure/mock_bd_local_repository.dart';
import 'package:app_rent_bike/src/Auth/Infrastructure/mock_repository.dart';
import 'package:app_rent_bike/src/Auth/Infrastructure/shared_pref_bd_local_repository.dart';
import 'package:app_rent_bike/src/shared/Domain/interface_persistence_local.dart';
import 'package:app_rent_bike/src/shared/Infrastructure/shared_preference_persistence.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/DataPrueba/Infrastructure/firestore_repository.dart';
import 'src/DataPrueba/Infrastructure/mock_repository.dart';
import 'src/Horarios/Infrastructure/firestore_horario_repository.dart';
import 'src/Horarios/Infrastructure/mock_horario_repository.dart';
part 'injection.freezed.dart';

final getIt = GetIt.instance;

Future<void> configureInjection(Env environment) async {
//
//==================================================
//            Configuracines Iniciales
//==================================================

  environment.maybeWhen(
    dev: () {
      final android = FlavorConfig.instance.variables[Port.androidPlatform] as String;
      final others = FlavorConfig.instance.variables[Port.anotherPlatform] as String;
      final host = defaultTargetPlatform == TargetPlatform.android ? android : others;
      FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false);
    },
    test: () {
      getIt.registerSingleton<ServicesAuth>(ServicesAuth.instanceMock());
    },
    orElse: () {},
  );

//
//
//
//==================================================
//      Inyeccion de dependencias por ambiente
//==================================================

  await environment.maybeWhen(
    test: () async {
      getIt.registerSingleton<InterfaceHorarioRepository>(MockHorarioRepository());
      getIt.registerSingleton<InterfaceDataUserRepository>(MockDataUserRepository(getIt<ServicesAuth>()));
    },
    orElse: () async {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;

      /*    getIt.registerSingletonAsync<IntefacePersistenceRepository>(() => SharedPreferencePersistenceLocal.instance());

      getIt.registerSingleton<InterfaceDataUserRepository>(
          FirestoreDataUserRepository(getIt<IntefacePersistenceRepository>())); */

      getIt.registerSingleton<InterfaceHorarioRepository>(FirestoreHorarioRepository(firestore));
    },
  );
}

class Port {
  static const androidPlatform = 'android';
  static const anotherPlatform = 'another';
}

@freezed
abstract class Env with _$Env {
  const factory Env.dev() = Dev;
  const factory Env.prod() = Prod;
  const factory Env.test() = Test;
}
/* abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
} */
