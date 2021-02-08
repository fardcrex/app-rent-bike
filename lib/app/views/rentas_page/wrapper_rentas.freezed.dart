// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wrapper_rentas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$_ViewModelTearOff {
  const _$_ViewModelTearOff();

// ignore: unused_element
  __ViewModel call(
      {AppMenu appMenu,
      bool isLoading,
      String uidUser,
      bool isTimeLocal,
      DateTime dateTimeNow,
      List<HorarioDto> horariosList}) {
    return __ViewModel(
      appMenu: appMenu,
      isLoading: isLoading,
      uidUser: uidUser,
      isTimeLocal: isTimeLocal,
      dateTimeNow: dateTimeNow,
      horariosList: horariosList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const _$ViewModel = _$_ViewModelTearOff();

/// @nodoc
mixin _$_ViewModel {
  AppMenu get appMenu;
  bool get isLoading;
  String get uidUser;
  bool get isTimeLocal;
  DateTime get dateTimeNow;
  List<HorarioDto> get horariosList;

  @JsonKey(ignore: true)
  _$ViewModelCopyWith<_ViewModel> get copyWith;
}

/// @nodoc
abstract class _$ViewModelCopyWith<$Res> {
  factory _$ViewModelCopyWith(
          _ViewModel value, $Res Function(_ViewModel) then) =
      __$ViewModelCopyWithImpl<$Res>;
  $Res call(
      {AppMenu appMenu,
      bool isLoading,
      String uidUser,
      bool isTimeLocal,
      DateTime dateTimeNow,
      List<HorarioDto> horariosList});

  $AppMenuCopyWith<$Res> get appMenu;
}

/// @nodoc
class __$ViewModelCopyWithImpl<$Res> implements _$ViewModelCopyWith<$Res> {
  __$ViewModelCopyWithImpl(this._value, this._then);

  final _ViewModel _value;
  // ignore: unused_field
  final $Res Function(_ViewModel) _then;

  @override
  $Res call({
    Object appMenu = freezed,
    Object isLoading = freezed,
    Object uidUser = freezed,
    Object isTimeLocal = freezed,
    Object dateTimeNow = freezed,
    Object horariosList = freezed,
  }) {
    return _then(_value.copyWith(
      appMenu: appMenu == freezed ? _value.appMenu : appMenu as AppMenu,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      uidUser: uidUser == freezed ? _value.uidUser : uidUser as String,
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
      dateTimeNow:
          dateTimeNow == freezed ? _value.dateTimeNow : dateTimeNow as DateTime,
      horariosList: horariosList == freezed
          ? _value.horariosList
          : horariosList as List<HorarioDto>,
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
abstract class _$_ViewModelCopyWith<$Res> implements _$ViewModelCopyWith<$Res> {
  factory _$_ViewModelCopyWith(
          __ViewModel value, $Res Function(__ViewModel) then) =
      __$_ViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppMenu appMenu,
      bool isLoading,
      String uidUser,
      bool isTimeLocal,
      DateTime dateTimeNow,
      List<HorarioDto> horariosList});

  @override
  $AppMenuCopyWith<$Res> get appMenu;
}

/// @nodoc
class __$_ViewModelCopyWithImpl<$Res> extends __$ViewModelCopyWithImpl<$Res>
    implements _$_ViewModelCopyWith<$Res> {
  __$_ViewModelCopyWithImpl(
      __ViewModel _value, $Res Function(__ViewModel) _then)
      : super(_value, (v) => _then(v as __ViewModel));

  @override
  __ViewModel get _value => super._value as __ViewModel;

  @override
  $Res call({
    Object appMenu = freezed,
    Object isLoading = freezed,
    Object uidUser = freezed,
    Object isTimeLocal = freezed,
    Object dateTimeNow = freezed,
    Object horariosList = freezed,
  }) {
    return _then(__ViewModel(
      appMenu: appMenu == freezed ? _value.appMenu : appMenu as AppMenu,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      uidUser: uidUser == freezed ? _value.uidUser : uidUser as String,
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
      dateTimeNow:
          dateTimeNow == freezed ? _value.dateTimeNow : dateTimeNow as DateTime,
      horariosList: horariosList == freezed
          ? _value.horariosList
          : horariosList as List<HorarioDto>,
    ));
  }
}

/// @nodoc
class _$__ViewModel implements __ViewModel {
  const _$__ViewModel(
      {this.appMenu,
      this.isLoading,
      this.uidUser,
      this.isTimeLocal,
      this.dateTimeNow,
      this.horariosList});

  @override
  final AppMenu appMenu;
  @override
  final bool isLoading;
  @override
  final String uidUser;
  @override
  final bool isTimeLocal;
  @override
  final DateTime dateTimeNow;
  @override
  final List<HorarioDto> horariosList;

  @override
  String toString() {
    return '_ViewModel(appMenu: $appMenu, isLoading: $isLoading, uidUser: $uidUser, isTimeLocal: $isTimeLocal, dateTimeNow: $dateTimeNow, horariosList: $horariosList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __ViewModel &&
            (identical(other.appMenu, appMenu) ||
                const DeepCollectionEquality()
                    .equals(other.appMenu, appMenu)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.uidUser, uidUser) ||
                const DeepCollectionEquality()
                    .equals(other.uidUser, uidUser)) &&
            (identical(other.isTimeLocal, isTimeLocal) ||
                const DeepCollectionEquality()
                    .equals(other.isTimeLocal, isTimeLocal)) &&
            (identical(other.dateTimeNow, dateTimeNow) ||
                const DeepCollectionEquality()
                    .equals(other.dateTimeNow, dateTimeNow)) &&
            (identical(other.horariosList, horariosList) ||
                const DeepCollectionEquality()
                    .equals(other.horariosList, horariosList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appMenu) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(uidUser) ^
      const DeepCollectionEquality().hash(isTimeLocal) ^
      const DeepCollectionEquality().hash(dateTimeNow) ^
      const DeepCollectionEquality().hash(horariosList);

  @JsonKey(ignore: true)
  @override
  _$_ViewModelCopyWith<__ViewModel> get copyWith =>
      __$_ViewModelCopyWithImpl<__ViewModel>(this, _$identity);
}

abstract class __ViewModel implements _ViewModel {
  const factory __ViewModel(
      {AppMenu appMenu,
      bool isLoading,
      String uidUser,
      bool isTimeLocal,
      DateTime dateTimeNow,
      List<HorarioDto> horariosList}) = _$__ViewModel;

  @override
  AppMenu get appMenu;
  @override
  bool get isLoading;
  @override
  String get uidUser;
  @override
  bool get isTimeLocal;
  @override
  DateTime get dateTimeNow;
  @override
  List<HorarioDto> get horariosList;
  @override
  @JsonKey(ignore: true)
  _$_ViewModelCopyWith<__ViewModel> get copyWith;
}
