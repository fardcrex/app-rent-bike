import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';

class CreateHorario {
  final InterfaceHorarioRepository horarioRepository;
  final InterfaceBDLocalRepository bdLocalRepository;

  CreateHorario(this.bdLocalRepository, this.horarioRepository);
  Future<void> execute() async {
    if (await bdLocalRepository.isNotRegisterOnApp()) {}

    return;
  }
}
