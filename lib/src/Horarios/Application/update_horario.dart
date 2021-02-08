import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure.dart';
import 'package:dartz/dartz.dart';

class UpdateHorario {
  final InterfaceHorarioRepository horarioRepository;

  UpdateHorario(this.horarioRepository);
  Future<Either<HorarioFailure, HorarioSuccess>> execute({String uidHorario, String uidUser}) async {
    return horarioRepository.selectHorario(uidHorario: uidHorario, uidUser: uidUser);
    /* if (await bdLocalRepository.isNotRegisterOnApp()) {
      await horarioRepository.tryCreateHorarios();
      return;
    }
    if (await bdLocalRepository.isAnoherDay()) {
      await horarioRepository.tryUpdateHorarios();
    } */
  }
}
