import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure/success_and_failure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/enums.dart';
export 'enums/enums.dart';
part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    final AppMenu appMenu,
    final bool isLoading,
    final bool isTimeLocal,
    final BuiltList<HorarioEntity> horarios,
    final Option<Either<HorarioFailure, HorarioSuccess>> successOrFailureHorarioOption,
    final String uidUser,
    final DateTime dateTimeNow,
  }) = _AppState;

  factory AppState.initial({AppMenu appMenu, bool isTimeLocal, String uidUser}) => AppState(
      appMenu: appMenu ?? const AppMenu.horarios(),
      isLoading: true,
      horarios: <HorarioEntity>[].build(),
      dateTimeNow: DateTime.now(),
      successOrFailureHorarioOption: none(),
      uidUser: uidUser ?? '-1',
      isTimeLocal: isTimeLocal ?? true);
}

String getDia(int dia) {
  final Map<int, String> dias = {
    1: 'Lunes',
    2: 'Martes',
    3: 'Miércoles',
    4: 'Jueves',
    5: 'Viernes',
    6: 'Sábado',
    7: 'Domingo'
  };
  return dias[dia] ?? 'error dìa';
}
