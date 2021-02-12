import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/Horarios/Domain/value_objects.dart';
import 'package:built_collection/built_collection.dart';

BuiltList<HorarioEntity> getAllMyRentas({BuiltList<HorarioEntity> list, String idUser}) {
  /*  final listSort = list.where((horario) => horario.listUsers.contains(idUser)).toList()
    ..sort((dtoA, dtoB) => dtoA.timestamp?.compareTo(dtoB.timestamp) ?? 1); */
  return list.rebuild((listBuilder) {
    listBuilder.where((horario) => horario.listUsers.contains(idUser));
    listBuilder.sort((dtoA, dtoB) => dtoA.duration?.compareTo(dtoB.duration) ?? 1);
    listBuilder.map((horario) => horario.copyWith(
        textTimer: horario.textTimeToBeginOrFinish,
        limitBikesAvailables: LimitBikesAvailables(0),
        listUsers: <String>[].build()));
    return listBuilder;
  });
}

List<HorarioEntity> getHorarios(List<HorarioDto> horariosList) {
  return horariosList.map((e) => HorarioEntity.fromDto(e).fold((l) => l, (r) => r)).whereType<HorarioEntity>().toList();
}
