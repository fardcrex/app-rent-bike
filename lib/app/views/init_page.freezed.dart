// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'init_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$_ViewModelTearOff {
  const _$_ViewModelTearOff();

// ignore: unused_element
  __ViewModel call({AppMenu appMenu, bool isTimeLocal}) {
    return __ViewModel(
      appMenu: appMenu,
      isTimeLocal: isTimeLocal,
    );
  }
}

/// @nodoc
// ignore: unused_element
const _$ViewModel = _$_ViewModelTearOff();

/// @nodoc
mixin _$_ViewModel {
  AppMenu get appMenu;
  bool get isTimeLocal;

  @JsonKey(ignore: true)
  _$ViewModelCopyWith<_ViewModel> get copyWith;
}

/// @nodoc
abstract class _$ViewModelCopyWith<$Res> {
  factory _$ViewModelCopyWith(
          _ViewModel value, $Res Function(_ViewModel) then) =
      __$ViewModelCopyWithImpl<$Res>;
  $Res call({AppMenu appMenu, bool isTimeLocal});

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
    Object isTimeLocal = freezed,
  }) {
    return _then(_value.copyWith(
      appMenu: appMenu == freezed ? _value.appMenu : appMenu as AppMenu,
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
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
  $Res call({AppMenu appMenu, bool isTimeLocal});

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
    Object isTimeLocal = freezed,
  }) {
    return _then(__ViewModel(
      appMenu: appMenu == freezed ? _value.appMenu : appMenu as AppMenu,
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
    ));
  }
}

/// @nodoc
class _$__ViewModel implements __ViewModel {
  const _$__ViewModel({this.appMenu, this.isTimeLocal});

  @override
  final AppMenu appMenu;
  @override
  final bool isTimeLocal;

  @override
  String toString() {
    return '_ViewModel(appMenu: $appMenu, isTimeLocal: $isTimeLocal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __ViewModel &&
            (identical(other.appMenu, appMenu) ||
                const DeepCollectionEquality()
                    .equals(other.appMenu, appMenu)) &&
            (identical(other.isTimeLocal, isTimeLocal) ||
                const DeepCollectionEquality()
                    .equals(other.isTimeLocal, isTimeLocal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appMenu) ^
      const DeepCollectionEquality().hash(isTimeLocal);

  @JsonKey(ignore: true)
  @override
  _$_ViewModelCopyWith<__ViewModel> get copyWith =>
      __$_ViewModelCopyWithImpl<__ViewModel>(this, _$identity);
}

abstract class __ViewModel implements _ViewModel {
  const factory __ViewModel({AppMenu appMenu, bool isTimeLocal}) =
      _$__ViewModel;

  @override
  AppMenu get appMenu;
  @override
  bool get isTimeLocal;
  @override
  @JsonKey(ignore: true)
  _$_ViewModelCopyWith<__ViewModel> get copyWith;
}
