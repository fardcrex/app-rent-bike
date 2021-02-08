// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  _AppState call(
      {AppMenu appMenu,
      bool isLoading,
      bool isTimeLocal,
      List<HorarioDto> horarios,
      Option<Either<HorarioFailure, HorarioSuccess>>
          successOrFailureHorarioOption,
      String uidUser,
      DateTime dateTimeNow}) {
    return _AppState(
      appMenu: appMenu,
      isLoading: isLoading,
      isTimeLocal: isTimeLocal,
      horarios: horarios,
      successOrFailureHorarioOption: successOrFailureHorarioOption,
      uidUser: uidUser,
      dateTimeNow: dateTimeNow,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AppMenu get appMenu;
  bool get isLoading;
  bool get isTimeLocal;
  List<HorarioDto> get horarios;
  Option<Either<HorarioFailure, HorarioSuccess>>
      get successOrFailureHorarioOption;
  String get uidUser;
  DateTime get dateTimeNow;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {AppMenu appMenu,
      bool isLoading,
      bool isTimeLocal,
      List<HorarioDto> horarios,
      Option<Either<HorarioFailure, HorarioSuccess>>
          successOrFailureHorarioOption,
      String uidUser,
      DateTime dateTimeNow});

  $AppMenuCopyWith<$Res> get appMenu;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object appMenu = freezed,
    Object isLoading = freezed,
    Object isTimeLocal = freezed,
    Object horarios = freezed,
    Object successOrFailureHorarioOption = freezed,
    Object uidUser = freezed,
    Object dateTimeNow = freezed,
  }) {
    return _then(_value.copyWith(
      appMenu: appMenu == freezed ? _value.appMenu : appMenu as AppMenu,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
      horarios:
          horarios == freezed ? _value.horarios : horarios as List<HorarioDto>,
      successOrFailureHorarioOption: successOrFailureHorarioOption == freezed
          ? _value.successOrFailureHorarioOption
          : successOrFailureHorarioOption
              as Option<Either<HorarioFailure, HorarioSuccess>>,
      uidUser: uidUser == freezed ? _value.uidUser : uidUser as String,
      dateTimeNow:
          dateTimeNow == freezed ? _value.dateTimeNow : dateTimeNow as DateTime,
    ));
  }

  @override
  $AppMenuCopyWith<$Res> get appMenu {
    if (_value.appMenu == null) {
      return null;
    }
    return $AppMenuCopyWith<$Res>(_value.appMenu, (value) {
      return _then(_value.copyWith(appMenu: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppMenu appMenu,
      bool isLoading,
      bool isTimeLocal,
      List<HorarioDto> horarios,
      Option<Either<HorarioFailure, HorarioSuccess>>
          successOrFailureHorarioOption,
      String uidUser,
      DateTime dateTimeNow});

  @override
  $AppMenuCopyWith<$Res> get appMenu;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object appMenu = freezed,
    Object isLoading = freezed,
    Object isTimeLocal = freezed,
    Object horarios = freezed,
    Object successOrFailureHorarioOption = freezed,
    Object uidUser = freezed,
    Object dateTimeNow = freezed,
  }) {
    return _then(_AppState(
      appMenu: appMenu == freezed ? _value.appMenu : appMenu as AppMenu,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
      horarios:
          horarios == freezed ? _value.horarios : horarios as List<HorarioDto>,
      successOrFailureHorarioOption: successOrFailureHorarioOption == freezed
          ? _value.successOrFailureHorarioOption
          : successOrFailureHorarioOption
              as Option<Either<HorarioFailure, HorarioSuccess>>,
      uidUser: uidUser == freezed ? _value.uidUser : uidUser as String,
      dateTimeNow:
          dateTimeNow == freezed ? _value.dateTimeNow : dateTimeNow as DateTime,
    ));
  }
}

/// @nodoc
class _$_AppState implements _AppState {
  const _$_AppState(
      {this.appMenu,
      this.isLoading,
      this.isTimeLocal,
      this.horarios,
      this.successOrFailureHorarioOption,
      this.uidUser,
      this.dateTimeNow});

  @override
  final AppMenu appMenu;
  @override
  final bool isLoading;
  @override
  final bool isTimeLocal;
  @override
  final List<HorarioDto> horarios;
  @override
  final Option<Either<HorarioFailure, HorarioSuccess>>
      successOrFailureHorarioOption;
  @override
  final String uidUser;
  @override
  final DateTime dateTimeNow;

  @override
  String toString() {
    return 'AppState(appMenu: $appMenu, isLoading: $isLoading, isTimeLocal: $isTimeLocal, horarios: $horarios, successOrFailureHorarioOption: $successOrFailureHorarioOption, uidUser: $uidUser, dateTimeNow: $dateTimeNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.appMenu, appMenu) ||
                const DeepCollectionEquality()
                    .equals(other.appMenu, appMenu)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isTimeLocal, isTimeLocal) ||
                const DeepCollectionEquality()
                    .equals(other.isTimeLocal, isTimeLocal)) &&
            (identical(other.horarios, horarios) ||
                const DeepCollectionEquality()
                    .equals(other.horarios, horarios)) &&
            (identical(other.successOrFailureHorarioOption,
                    successOrFailureHorarioOption) ||
                const DeepCollectionEquality().equals(
                    other.successOrFailureHorarioOption,
                    successOrFailureHorarioOption)) &&
            (identical(other.uidUser, uidUser) ||
                const DeepCollectionEquality()
                    .equals(other.uidUser, uidUser)) &&
            (identical(other.dateTimeNow, dateTimeNow) ||
                const DeepCollectionEquality()
                    .equals(other.dateTimeNow, dateTimeNow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appMenu) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isTimeLocal) ^
      const DeepCollectionEquality().hash(horarios) ^
      const DeepCollectionEquality().hash(successOrFailureHorarioOption) ^
      const DeepCollectionEquality().hash(uidUser) ^
      const DeepCollectionEquality().hash(dateTimeNow);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {AppMenu appMenu,
      bool isLoading,
      bool isTimeLocal,
      List<HorarioDto> horarios,
      Option<Either<HorarioFailure, HorarioSuccess>>
          successOrFailureHorarioOption,
      String uidUser,
      DateTime dateTimeNow}) = _$_AppState;

  @override
  AppMenu get appMenu;
  @override
  bool get isLoading;
  @override
  bool get isTimeLocal;
  @override
  List<HorarioDto> get horarios;
  @override
  Option<Either<HorarioFailure, HorarioSuccess>>
      get successOrFailureHorarioOption;
  @override
  String get uidUser;
  @override
  DateTime get dateTimeNow;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith;
}
