// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'horario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HorarioDto _$HorarioDtoFromJson(Map<String, dynamic> json) {
  return _HorarioDto.fromJson(json);
}

/// @nodoc
class _$HorarioDtoTearOff {
  const _$HorarioDtoTearOff();

// ignore: unused_element
  _HorarioDto call(
      {int hourInit,
      int minuteInit,
      int hourFinish,
      int minuteFinish,
      @JsonKey(name: JsonKeyHorario.timestamp) int timestamp,
      @JsonKey(name: JsonKeyHorario.idUsers) List<String> idUsers,
      @JsonKey(name: JsonKeyHorario.uidHorario) String uidHorario,
      @JsonKey(name: JsonKeyHorario.bikesAvailables) int bikesAvailables}) {
    return _HorarioDto(
      hourInit: hourInit,
      minuteInit: minuteInit,
      hourFinish: hourFinish,
      minuteFinish: minuteFinish,
      timestamp: timestamp,
      idUsers: idUsers,
      uidHorario: uidHorario,
      bikesAvailables: bikesAvailables,
    );
  }

// ignore: unused_element
  HorarioDto fromJson(Map<String, Object> json) {
    return HorarioDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HorarioDto = _$HorarioDtoTearOff();

/// @nodoc
mixin _$HorarioDto {
  int get hourInit;
  int get minuteInit;
  int get hourFinish;
  int get minuteFinish;
  @JsonKey(name: JsonKeyHorario.timestamp)
  int get timestamp;
  @JsonKey(name: JsonKeyHorario.idUsers)
  List<String> get idUsers;
  @JsonKey(name: JsonKeyHorario.uidHorario)
  String get uidHorario;
  @JsonKey(name: JsonKeyHorario.bikesAvailables)
  int get bikesAvailables;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HorarioDtoCopyWith<HorarioDto> get copyWith;
}

/// @nodoc
abstract class $HorarioDtoCopyWith<$Res> {
  factory $HorarioDtoCopyWith(
          HorarioDto value, $Res Function(HorarioDto) then) =
      _$HorarioDtoCopyWithImpl<$Res>;
  $Res call(
      {int hourInit,
      int minuteInit,
      int hourFinish,
      int minuteFinish,
      @JsonKey(name: JsonKeyHorario.timestamp) int timestamp,
      @JsonKey(name: JsonKeyHorario.idUsers) List<String> idUsers,
      @JsonKey(name: JsonKeyHorario.uidHorario) String uidHorario,
      @JsonKey(name: JsonKeyHorario.bikesAvailables) int bikesAvailables});
}

/// @nodoc
class _$HorarioDtoCopyWithImpl<$Res> implements $HorarioDtoCopyWith<$Res> {
  _$HorarioDtoCopyWithImpl(this._value, this._then);

  final HorarioDto _value;
  // ignore: unused_field
  final $Res Function(HorarioDto) _then;

  @override
  $Res call({
    Object hourInit = freezed,
    Object minuteInit = freezed,
    Object hourFinish = freezed,
    Object minuteFinish = freezed,
    Object timestamp = freezed,
    Object idUsers = freezed,
    Object uidHorario = freezed,
    Object bikesAvailables = freezed,
  }) {
    return _then(_value.copyWith(
      hourInit: hourInit == freezed ? _value.hourInit : hourInit as int,
      minuteInit: minuteInit == freezed ? _value.minuteInit : minuteInit as int,
      hourFinish: hourFinish == freezed ? _value.hourFinish : hourFinish as int,
      minuteFinish:
          minuteFinish == freezed ? _value.minuteFinish : minuteFinish as int,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as int,
      idUsers: idUsers == freezed ? _value.idUsers : idUsers as List<String>,
      uidHorario:
          uidHorario == freezed ? _value.uidHorario : uidHorario as String,
      bikesAvailables: bikesAvailables == freezed
          ? _value.bikesAvailables
          : bikesAvailables as int,
    ));
  }
}

/// @nodoc
abstract class _$HorarioDtoCopyWith<$Res> implements $HorarioDtoCopyWith<$Res> {
  factory _$HorarioDtoCopyWith(
          _HorarioDto value, $Res Function(_HorarioDto) then) =
      __$HorarioDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int hourInit,
      int minuteInit,
      int hourFinish,
      int minuteFinish,
      @JsonKey(name: JsonKeyHorario.timestamp) int timestamp,
      @JsonKey(name: JsonKeyHorario.idUsers) List<String> idUsers,
      @JsonKey(name: JsonKeyHorario.uidHorario) String uidHorario,
      @JsonKey(name: JsonKeyHorario.bikesAvailables) int bikesAvailables});
}

/// @nodoc
class __$HorarioDtoCopyWithImpl<$Res> extends _$HorarioDtoCopyWithImpl<$Res>
    implements _$HorarioDtoCopyWith<$Res> {
  __$HorarioDtoCopyWithImpl(
      _HorarioDto _value, $Res Function(_HorarioDto) _then)
      : super(_value, (v) => _then(v as _HorarioDto));

  @override
  _HorarioDto get _value => super._value as _HorarioDto;

  @override
  $Res call({
    Object hourInit = freezed,
    Object minuteInit = freezed,
    Object hourFinish = freezed,
    Object minuteFinish = freezed,
    Object timestamp = freezed,
    Object idUsers = freezed,
    Object uidHorario = freezed,
    Object bikesAvailables = freezed,
  }) {
    return _then(_HorarioDto(
      hourInit: hourInit == freezed ? _value.hourInit : hourInit as int,
      minuteInit: minuteInit == freezed ? _value.minuteInit : minuteInit as int,
      hourFinish: hourFinish == freezed ? _value.hourFinish : hourFinish as int,
      minuteFinish:
          minuteFinish == freezed ? _value.minuteFinish : minuteFinish as int,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as int,
      idUsers: idUsers == freezed ? _value.idUsers : idUsers as List<String>,
      uidHorario:
          uidHorario == freezed ? _value.uidHorario : uidHorario as String,
      bikesAvailables: bikesAvailables == freezed
          ? _value.bikesAvailables
          : bikesAvailables as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HorarioDto implements _HorarioDto {
  const _$_HorarioDto(
      {this.hourInit,
      this.minuteInit,
      this.hourFinish,
      this.minuteFinish,
      @JsonKey(name: JsonKeyHorario.timestamp) this.timestamp,
      @JsonKey(name: JsonKeyHorario.idUsers) this.idUsers,
      @JsonKey(name: JsonKeyHorario.uidHorario) this.uidHorario,
      @JsonKey(name: JsonKeyHorario.bikesAvailables) this.bikesAvailables});

  factory _$_HorarioDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HorarioDtoFromJson(json);

  @override
  final int hourInit;
  @override
  final int minuteInit;
  @override
  final int hourFinish;
  @override
  final int minuteFinish;
  @override
  @JsonKey(name: JsonKeyHorario.timestamp)
  final int timestamp;
  @override
  @JsonKey(name: JsonKeyHorario.idUsers)
  final List<String> idUsers;
  @override
  @JsonKey(name: JsonKeyHorario.uidHorario)
  final String uidHorario;
  @override
  @JsonKey(name: JsonKeyHorario.bikesAvailables)
  final int bikesAvailables;

  @override
  String toString() {
    return 'HorarioDto(hourInit: $hourInit, minuteInit: $minuteInit, hourFinish: $hourFinish, minuteFinish: $minuteFinish, timestamp: $timestamp, idUsers: $idUsers, uidHorario: $uidHorario, bikesAvailables: $bikesAvailables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HorarioDto &&
            (identical(other.hourInit, hourInit) ||
                const DeepCollectionEquality()
                    .equals(other.hourInit, hourInit)) &&
            (identical(other.minuteInit, minuteInit) ||
                const DeepCollectionEquality()
                    .equals(other.minuteInit, minuteInit)) &&
            (identical(other.hourFinish, hourFinish) ||
                const DeepCollectionEquality()
                    .equals(other.hourFinish, hourFinish)) &&
            (identical(other.minuteFinish, minuteFinish) ||
                const DeepCollectionEquality()
                    .equals(other.minuteFinish, minuteFinish)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.idUsers, idUsers) ||
                const DeepCollectionEquality()
                    .equals(other.idUsers, idUsers)) &&
            (identical(other.uidHorario, uidHorario) ||
                const DeepCollectionEquality()
                    .equals(other.uidHorario, uidHorario)) &&
            (identical(other.bikesAvailables, bikesAvailables) ||
                const DeepCollectionEquality()
                    .equals(other.bikesAvailables, bikesAvailables)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hourInit) ^
      const DeepCollectionEquality().hash(minuteInit) ^
      const DeepCollectionEquality().hash(hourFinish) ^
      const DeepCollectionEquality().hash(minuteFinish) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(idUsers) ^
      const DeepCollectionEquality().hash(uidHorario) ^
      const DeepCollectionEquality().hash(bikesAvailables);

  @JsonKey(ignore: true)
  @override
  _$HorarioDtoCopyWith<_HorarioDto> get copyWith =>
      __$HorarioDtoCopyWithImpl<_HorarioDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HorarioDtoToJson(this);
  }
}

abstract class _HorarioDto implements HorarioDto {
  const factory _HorarioDto(
          {int hourInit,
          int minuteInit,
          int hourFinish,
          int minuteFinish,
          @JsonKey(name: JsonKeyHorario.timestamp) int timestamp,
          @JsonKey(name: JsonKeyHorario.idUsers) List<String> idUsers,
          @JsonKey(name: JsonKeyHorario.uidHorario) String uidHorario,
          @JsonKey(name: JsonKeyHorario.bikesAvailables) int bikesAvailables}) =
      _$_HorarioDto;

  factory _HorarioDto.fromJson(Map<String, dynamic> json) =
      _$_HorarioDto.fromJson;

  @override
  int get hourInit;
  @override
  int get minuteInit;
  @override
  int get hourFinish;
  @override
  int get minuteFinish;
  @override
  @JsonKey(name: JsonKeyHorario.timestamp)
  int get timestamp;
  @override
  @JsonKey(name: JsonKeyHorario.idUsers)
  List<String> get idUsers;
  @override
  @JsonKey(name: JsonKeyHorario.uidHorario)
  String get uidHorario;
  @override
  @JsonKey(name: JsonKeyHorario.bikesAvailables)
  int get bikesAvailables;
  @override
  @JsonKey(ignore: true)
  _$HorarioDtoCopyWith<_HorarioDto> get copyWith;
}

ConfigDto _$ConfigDtoFromJson(Map<String, dynamic> json) {
  return _ConfigDto.fromJson(json);
}

/// @nodoc
class _$ConfigDtoTearOff {
  const _$ConfigDtoTearOff();

// ignore: unused_element
  _ConfigDto call(
      {int timestamp,
      int limitMaxBikesAvailables,
      bool isCreateHorarios,
      String cleanUsersToHorarios}) {
    return _ConfigDto(
      timestamp: timestamp,
      limitMaxBikesAvailables: limitMaxBikesAvailables,
      isCreateHorarios: isCreateHorarios,
      cleanUsersToHorarios: cleanUsersToHorarios,
    );
  }

// ignore: unused_element
  ConfigDto fromJson(Map<String, Object> json) {
    return ConfigDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ConfigDto = _$ConfigDtoTearOff();

/// @nodoc
mixin _$ConfigDto {
  int get timestamp;
  int get limitMaxBikesAvailables;
  bool get isCreateHorarios;
  String get cleanUsersToHorarios;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ConfigDtoCopyWith<ConfigDto> get copyWith;
}

/// @nodoc
abstract class $ConfigDtoCopyWith<$Res> {
  factory $ConfigDtoCopyWith(ConfigDto value, $Res Function(ConfigDto) then) =
      _$ConfigDtoCopyWithImpl<$Res>;
  $Res call(
      {int timestamp,
      int limitMaxBikesAvailables,
      bool isCreateHorarios,
      String cleanUsersToHorarios});
}

/// @nodoc
class _$ConfigDtoCopyWithImpl<$Res> implements $ConfigDtoCopyWith<$Res> {
  _$ConfigDtoCopyWithImpl(this._value, this._then);

  final ConfigDto _value;
  // ignore: unused_field
  final $Res Function(ConfigDto) _then;

  @override
  $Res call({
    Object timestamp = freezed,
    Object limitMaxBikesAvailables = freezed,
    Object isCreateHorarios = freezed,
    Object cleanUsersToHorarios = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as int,
      limitMaxBikesAvailables: limitMaxBikesAvailables == freezed
          ? _value.limitMaxBikesAvailables
          : limitMaxBikesAvailables as int,
      isCreateHorarios: isCreateHorarios == freezed
          ? _value.isCreateHorarios
          : isCreateHorarios as bool,
      cleanUsersToHorarios: cleanUsersToHorarios == freezed
          ? _value.cleanUsersToHorarios
          : cleanUsersToHorarios as String,
    ));
  }
}

/// @nodoc
abstract class _$ConfigDtoCopyWith<$Res> implements $ConfigDtoCopyWith<$Res> {
  factory _$ConfigDtoCopyWith(
          _ConfigDto value, $Res Function(_ConfigDto) then) =
      __$ConfigDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int timestamp,
      int limitMaxBikesAvailables,
      bool isCreateHorarios,
      String cleanUsersToHorarios});
}

/// @nodoc
class __$ConfigDtoCopyWithImpl<$Res> extends _$ConfigDtoCopyWithImpl<$Res>
    implements _$ConfigDtoCopyWith<$Res> {
  __$ConfigDtoCopyWithImpl(_ConfigDto _value, $Res Function(_ConfigDto) _then)
      : super(_value, (v) => _then(v as _ConfigDto));

  @override
  _ConfigDto get _value => super._value as _ConfigDto;

  @override
  $Res call({
    Object timestamp = freezed,
    Object limitMaxBikesAvailables = freezed,
    Object isCreateHorarios = freezed,
    Object cleanUsersToHorarios = freezed,
  }) {
    return _then(_ConfigDto(
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as int,
      limitMaxBikesAvailables: limitMaxBikesAvailables == freezed
          ? _value.limitMaxBikesAvailables
          : limitMaxBikesAvailables as int,
      isCreateHorarios: isCreateHorarios == freezed
          ? _value.isCreateHorarios
          : isCreateHorarios as bool,
      cleanUsersToHorarios: cleanUsersToHorarios == freezed
          ? _value.cleanUsersToHorarios
          : cleanUsersToHorarios as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ConfigDto implements _ConfigDto {
  const _$_ConfigDto(
      {this.timestamp,
      this.limitMaxBikesAvailables,
      this.isCreateHorarios,
      this.cleanUsersToHorarios});

  factory _$_ConfigDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ConfigDtoFromJson(json);

  @override
  final int timestamp;
  @override
  final int limitMaxBikesAvailables;
  @override
  final bool isCreateHorarios;
  @override
  final String cleanUsersToHorarios;

  @override
  String toString() {
    return 'ConfigDto(timestamp: $timestamp, limitMaxBikesAvailables: $limitMaxBikesAvailables, isCreateHorarios: $isCreateHorarios, cleanUsersToHorarios: $cleanUsersToHorarios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigDto &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(
                    other.limitMaxBikesAvailables, limitMaxBikesAvailables) ||
                const DeepCollectionEquality().equals(
                    other.limitMaxBikesAvailables, limitMaxBikesAvailables)) &&
            (identical(other.isCreateHorarios, isCreateHorarios) ||
                const DeepCollectionEquality()
                    .equals(other.isCreateHorarios, isCreateHorarios)) &&
            (identical(other.cleanUsersToHorarios, cleanUsersToHorarios) ||
                const DeepCollectionEquality()
                    .equals(other.cleanUsersToHorarios, cleanUsersToHorarios)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(limitMaxBikesAvailables) ^
      const DeepCollectionEquality().hash(isCreateHorarios) ^
      const DeepCollectionEquality().hash(cleanUsersToHorarios);

  @JsonKey(ignore: true)
  @override
  _$ConfigDtoCopyWith<_ConfigDto> get copyWith =>
      __$ConfigDtoCopyWithImpl<_ConfigDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConfigDtoToJson(this);
  }
}

abstract class _ConfigDto implements ConfigDto {
  const factory _ConfigDto(
      {int timestamp,
      int limitMaxBikesAvailables,
      bool isCreateHorarios,
      String cleanUsersToHorarios}) = _$_ConfigDto;

  factory _ConfigDto.fromJson(Map<String, dynamic> json) =
      _$_ConfigDto.fromJson;

  @override
  int get timestamp;
  @override
  int get limitMaxBikesAvailables;
  @override
  bool get isCreateHorarios;
  @override
  String get cleanUsersToHorarios;
  @override
  @JsonKey(ignore: true)
  _$ConfigDtoCopyWith<_ConfigDto> get copyWith;
}
