import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';

class InitStreamHorariosAction {}

class CancelStreamHorariosAction {}

class SetHorariossAction {
  final List<HorarioDto> listHorarios;

  SetHorariossAction(this.listHorarios);
}

class PressSwitchHorarioAction {
  final String uidHorario;

  PressSwitchHorarioAction(this.uidHorario);
}
