import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';

import 'src/DataPrueba/Infrastructure/firestore_repository.dart';
import 'src/DataPrueba/Infrastructure/mock_repository.dart';
import 'src/Horarios/Infrastructure/firestore_horario_repository.dart';
import 'src/Horarios/Infrastructure/mock_bd_local_repository.dart';
import 'src/Horarios/Infrastructure/mock_horario_repository.dart';
import 'src/Horarios/Infrastructure/shared_pref_bd_local_repository.dart';
part 'injection.freezed.dart';

final getIt = GetIt.instance;

void configureInjection(Env environment) {
//
//==================================================
//            Configuracines Iniciales
//==================================================
  environment.maybeWhen(
    dev: () {
      final android = FlavorConfig.instance.variables['portForAndroid'] as String;
      final others = FlavorConfig.instance.variables['portForAnothers'] as String;
      final host = defaultTargetPlatform == TargetPlatform.android ? android : others;
      FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false);
    },
    orElse: () {},
  );

//
//
//
//
//==================================================
//      Inyeccion de dependencias por ambiente
//==================================================

  environment.maybeWhen(
    test: () {
      getIt.registerSingleton<InterfaceDataRepository>(MockDataRepository());
      getIt.registerSingleton<InterfaceBDLocalRepository>(MockBdLocalRepository());
      getIt.registerSingleton<InterfaceHorarioRepository>(MockHorarioRepository());
    },
    orElse: () {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;

      getIt.registerSingleton<InterfaceDataRepository>(FirestoreDataRepository(firestore));
      getIt.registerSingleton<InterfaceHorarioRepository>(FirestoreHorarioRepository(firestore));
      getIt.registerSingleton<InterfaceBDLocalRepository>(SharedPrefBdLocalRepository());
    },
  );
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
