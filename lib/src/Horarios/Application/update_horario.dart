import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure/success_and_failure.dart';
import 'package:dartz/dartz.dart';

class UpdateHorario {
  final InterfaceHorarioRepository horarioRepository;

  UpdateHorario(this.horarioRepository);
  Future<Either<HorarioFailure, HorarioSuccess>> execute({HorarioEntity horario, String uidUser}) async {
    if (horario.listUsers.contains(uidUser)) {
      return horarioRepository.cancelHorario(uidHorario: horario.uidHorario, uidUser: uidUser);
    }
    return horarioRepository.selectHorario(uidHorario: horario.uidHorario, uidUser: uidUser);
  }
}
