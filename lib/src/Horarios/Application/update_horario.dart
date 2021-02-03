import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';

class UpdateHorario {
  final InterfaceHorarioRepository horarioRepository;

  UpdateHorario(this.horarioRepository);
  Future<void> execute({String uidHorario, String uidUser}) async {
    await Future.delayed(const Duration());

    await horarioRepository.selectHorario(uidHorario: uidHorario, uidUser: uidUser);
    /* if (await bdLocalRepository.isNotRegisterOnApp()) {
      await horarioRepository.tryCreateHorarios();
      return;
    }
    if (await bdLocalRepository.isAnoherDay()) {
      await horarioRepository.tryUpdateHorarios();
    } */
    return;
  }
}
