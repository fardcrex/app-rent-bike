import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';

List<HorarioDto> getAllMyRentas({List<HorarioDto> list, String idUser}) {
  final listSort = list.where((horarioDto) => horarioDto.idUsers.contains(idUser)).toList()
    ..sort((dtoA, dtoB) => dtoA.timestamp?.compareTo(dtoB.timestamp) ?? 1);
  return listSort;
}
