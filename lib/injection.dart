import 'package:app_rent_bike/src/Auth/Infrastructure/firebase_auth_credential_repository.dart';
import 'package:app_rent_bike/src/Auth/Infrastructure/own_auth_credential_repository.dart';
import 'package:app_rent_bike/src/shared/Domain/interface_setting.dart';
import 'package:app_rent_bike/src/shared/Infrastructure/shared_preferences_settings_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/Auth/Domain/services_auth.dart';
import 'src/Horarios/Domain/interfaces_repository.dart';
import 'src/Horarios/Infrastructure/firestore_horario_repository.dart';
import 'src/Horarios/Infrastructure/mock_horario_repository.dart';
import 'src/User/Domain/interface_data_repository.dart';
import 'src/User/Infrastructure/mock_repository.dart';

part 'injection.freezed.dart';

final getIt = GetIt.instance;

Future<void> configureInjection(Env environment) async {
//
//==================================================
//            Configuracines Iniciales
//==================================================
  final sharedInstance = await SharedPreferences.getInstance();
  await environment.when(
    dev: () async {
      final android = FlavorConfig.instance.variables[Port.androidPlatform] as String;
      final others = FlavorConfig.instance.variables[Port.anotherPlatform] as String;
      final host = defaultTargetPlatform == TargetPlatform.android ? android : others;
      FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false);

      final credentialRepository = OwnAuthCredentialRepository(sharedInstance);
      getIt.registerSingleton<ServicesAuth>(await ServicesAuth.instance(credentialRepository));
      getIt.registerSingleton<InterfaceUserSettingsRepository>(credentialRepository);
    },
    test: () {
      getIt.registerSingleton<ServicesAuth>(ServicesAuth.instanceMock());
      getIt.registerSingleton<InterfaceUserSettingsRepository>(SharedPreferencesSettingsRepository(sharedInstance));
    },
    prod: () async {
      final firebaseAuth = FirebaseAuth.instance;
      final credentialRepository = FirebaseAuthCredentialRepository(firebaseAuth);
      getIt.registerSingleton<ServicesAuth>(await ServicesAuth.instance(credentialRepository));
      getIt.registerSingleton<InterfaceUserSettingsRepository>(SharedPreferencesSettingsRepository(sharedInstance));
    },
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
      getIt.registerSingleton<InterfaceDataUserRepository>(MockDataUserRepository(getIt<ServicesAuth>()));
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
