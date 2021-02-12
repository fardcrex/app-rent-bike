import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure/success_and_failure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';

class InitStreamHorariosAction {}

class CancelStreamHorariosAction {}

class SetHorariosAction {
  final BuiltList<HorarioEntity> listHorarios;

  SetHorariosAction(this.listHorarios);
}

class PressSwitchHorarioAction {
  final String uidHorario;

  PressSwitchHorarioAction(this.uidHorario);
}

class ShowSuccesOrFailureAction {
  final Option<Either<HorarioFailure, HorarioSuccess>> successOrFailureHorarioOption;

  ShowSuccesOrFailureAction(this.successOrFailureHorarioOption);
}
