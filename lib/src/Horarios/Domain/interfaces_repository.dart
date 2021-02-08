import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure.dart';
import 'package:dartz/dartz.dart';

import 'horarioDto/horario_dto.dart';

abstract class InterfaceHorarioRepository {
  Future<Either<HorarioFailure, HorarioSuccess>> selectHorario({String uidHorario, String uidUser});
  Stream<List<HorarioDto>> getHorariosStream();
}
