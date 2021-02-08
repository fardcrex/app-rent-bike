import 'horarioDto/horario_dto.dart';

abstract class InterfaceHorarioRepository {
  Future<void> selectHorario({String uidHorario, String uidUser});
  Stream<List<HorarioDto>> getHorariosStream();
}
