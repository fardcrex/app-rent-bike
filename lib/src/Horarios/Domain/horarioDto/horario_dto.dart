import 'package:freezed_annotation/freezed_annotation.dart';
part 'horario_dto.g.dart';
part 'horario_dto.freezed.dart';

class JsonKeyHorario {
  static const uidHorario = 'uidHorario';
  static const idUsers = 'id_users';
  static const bikesAvailables = 'bikesAvailables';
  static const timestamp = 'timestamp';
}

@freezed
abstract class HorarioDto with _$HorarioDto {
  const factory HorarioDto({
    int hourInit,
    int minuteInit,
    int hourFinish,
    int minuteFinish,
    @JsonKey(name: JsonKeyHorario.timestamp) int timestamp,
    @JsonKey(name: JsonKeyHorario.idUsers) List<String> idUsers,
    @JsonKey(name: JsonKeyHorario.uidHorario) String uidHorario,
    @JsonKey(name: JsonKeyHorario.bikesAvailables) int bikesAvailables,
  }) = _HorarioDto;

  factory HorarioDto.fromJson(Map<String, dynamic> json) => _$HorarioDtoFromJson(json);
}

//============================================================================

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
