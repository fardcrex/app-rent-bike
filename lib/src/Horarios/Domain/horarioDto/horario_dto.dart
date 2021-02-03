import 'package:freezed_annotation/freezed_annotation.dart';
part 'horario_dto.g.dart';
part 'horario_dto.freezed.dart';

@freezed
abstract class HorarioDto with _$HorarioDto {
  const factory HorarioDto({
    String uidHorario,
    int hourInit,
    int minuteInit,
    int hourFinish,
    int minuteFinish,
    int bikesAvailables,
    int timestamp,
    List<String> idUsers,
  }) = _HorarioDto;

  factory HorarioDto.fromJson(Map<String, dynamic> json) => _$HorarioDtoFromJson(json);
}

@freezed
abstract class ConfigDto with _$ConfigDto {
  const factory ConfigDto({
    int timestamp,
    int limitMaxBikesAvailables,
    bool isCreateHorarios,
    String cleanUsersToHorarios,
  }) = _ConfigDto;

  factory ConfigDto.fromJson(Map<String, dynamic> json) => _$ConfigDtoFromJson(json);

  factory ConfigDto.init() => ConfigDto(
        cleanUsersToHorarios: 'if you want clean Users put timestamp to 0 ',
        isCreateHorarios: false,
        limitMaxBikesAvailables: 8,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      );
}
