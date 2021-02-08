import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure.dart';
import 'package:dartz/dartz.dart';

class InitStreamHorariosAction {}

class CancelStreamHorariosAction {}

class SetHorariosAction {
  final List<HorarioDto> listHorarios;

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
