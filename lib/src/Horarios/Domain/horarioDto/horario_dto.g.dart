// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HorarioDto _$_$_HorarioDtoFromJson(Map<String, dynamic> json) {
  return _$_HorarioDto(
    uidHorario: json['uidHorario'] as String,
    hourInit: json['hourInit'] as int,
    minuteInit: json['minuteInit'] as int,
    hourFinish: json['hourFinish'] as int,
    minuteFinish: json['minuteFinish'] as int,
    bikesAvailables: json['bikesAvailables'] as int,
    timestamp: json['timestamp'] as int,
    idUsers: (json['idUsers'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_HorarioDtoToJson(_$_HorarioDto instance) =>
    <String, dynamic>{
      'uidHorario': instance.uidHorario,
      'hourInit': instance.hourInit,
      'minuteInit': instance.minuteInit,
      'hourFinish': instance.hourFinish,
      'minuteFinish': instance.minuteFinish,
      'bikesAvailables': instance.bikesAvailables,
      'timestamp': instance.timestamp,
      'idUsers': instance.idUsers,
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
