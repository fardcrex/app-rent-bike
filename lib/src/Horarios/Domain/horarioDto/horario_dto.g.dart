// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HorarioDto _$_$_HorarioDtoFromJson(Map<String, dynamic> json) {
  return _$_HorarioDto(
    hourInit: json['hourInit'] as int,
    minuteInit: json['minuteInit'] as int,
    hourFinish: json['hourFinish'] as int,
    minuteFinish: json['minuteFinish'] as int,
    timestamp: json['timestamp'] as int,
    idUsers: (json['id_users'] as List)?.map((e) => e as String)?.toList(),
    uidHorario: json['uidHorario'] as String,
    bikesAvailables: json['bikesAvailables'] as int,
  );
}

Map<String, dynamic> _$_$_HorarioDtoToJson(_$_HorarioDto instance) =>
    <String, dynamic>{
      'hourInit': instance.hourInit,
      'minuteInit': instance.minuteInit,
      'hourFinish': instance.hourFinish,
      'minuteFinish': instance.minuteFinish,
      'timestamp': instance.timestamp,
      'id_users': instance.idUsers,
      'uidHorario': instance.uidHorario,
      'bikesAvailables': instance.bikesAvailables,
    };

_$_ConfigDto _$_$_ConfigDtoFromJson(Map<String, dynamic> json) {
  return _$_ConfigDto(
    timestamp: json['timestamp'] as int,
    limitMaxBikesAvailables: json['limitMaxBikesAvailables'] as int,
    isCreateHorarios: json['isCreateHorarios'] as bool,
    cleanUsersToHorarios: json['cleanUsersToHorarios'] as String,
  );
}

Map<String, dynamic> _$_$_ConfigDtoToJson(_$_ConfigDto instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'limitMaxBikesAvailables': instance.limitMaxBikesAvailables,
      'isCreateHorarios': instance.isCreateHorarios,
      'cleanUsersToHorarios': instance.cleanUsersToHorarios,
    };
