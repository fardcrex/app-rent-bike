// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'switch_time_zone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$_ViewModelTearOff {
  const _$_ViewModelTearOff();

// ignore: unused_element
  __ViewModel call({bool isTimeLocal, dynamic Function(bool) onTabSelected}) {
    return __ViewModel(
      isTimeLocal: isTimeLocal,
      onTabSelected: onTabSelected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const _$ViewModel = _$_ViewModelTearOff();

/// @nodoc
mixin _$_ViewModel {
  bool get isTimeLocal;
  dynamic Function(bool) get onTabSelected;

  @JsonKey(ignore: true)
  _$ViewModelCopyWith<_ViewModel> get copyWith;
}

/// @nodoc
abstract class _$ViewModelCopyWith<$Res> {
  factory _$ViewModelCopyWith(
          _ViewModel value, $Res Function(_ViewModel) then) =
      __$ViewModelCopyWithImpl<$Res>;
  $Res call({bool isTimeLocal, dynamic Function(bool) onTabSelected});
}

/// @nodoc
class __$ViewModelCopyWithImpl<$Res> implements _$ViewModelCopyWith<$Res> {
  __$ViewModelCopyWithImpl(this._value, this._then);

  final _ViewModel _value;
  // ignore: unused_field
  final $Res Function(_ViewModel) _then;

  @override
  $Res call({
    Object isTimeLocal = freezed,
    Object onTabSelected = freezed,
  }) {
    return _then(_value.copyWith(
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
      onTabSelected: onTabSelected == freezed
          ? _value.onTabSelected
          : onTabSelected as dynamic Function(bool),
    ));
  }
}

/// @nodoc
abstract class _$_ViewModelCopyWith<$Res> implements _$ViewModelCopyWith<$Res> {
  factory _$_ViewModelCopyWith(
          __ViewModel value, $Res Function(__ViewModel) then) =
      __$_ViewModelCopyWithImpl<$Res>;
  @override
  $Res call({bool isTimeLocal, dynamic Function(bool) onTabSelected});
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
    Object isTimeLocal = freezed,
    Object onTabSelected = freezed,
  }) {
    return _then(__ViewModel(
      isTimeLocal:
          isTimeLocal == freezed ? _value.isTimeLocal : isTimeLocal as bool,
      onTabSelected: onTabSelected == freezed
          ? _value.onTabSelected
          : onTabSelected as dynamic Function(bool),
    ));
  }
}

/// @nodoc
class _$__ViewModel with DiagnosticableTreeMixin implements __ViewModel {
  const _$__ViewModel({this.isTimeLocal, this.onTabSelected});

  @override
  final bool isTimeLocal;
  @override
  final dynamic Function(bool) onTabSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_ViewModel(isTimeLocal: $isTimeLocal, onTabSelected: $onTabSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_ViewModel'))
      ..add(DiagnosticsProperty('isTimeLocal', isTimeLocal))
      ..add(DiagnosticsProperty('onTabSelected', onTabSelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __ViewModel &&
            (identical(other.isTimeLocal, isTimeLocal) ||
                const DeepCollectionEquality()
                    .equals(other.isTimeLocal, isTimeLocal)) &&
            (identical(other.onTabSelected, onTabSelected) ||
                const DeepCollectionEquality()
                    .equals(other.onTabSelected, onTabSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTimeLocal) ^
      const DeepCollectionEquality().hash(onTabSelected);

  @JsonKey(ignore: true)
  @override
  _$_ViewModelCopyWith<__ViewModel> get copyWith =>
      __$_ViewModelCopyWithImpl<__ViewModel>(this, _$identity);
}

abstract class __ViewModel implements _ViewModel {
  const factory __ViewModel(
      {bool isTimeLocal, dynamic Function(bool) onTabSelected}) = _$__ViewModel;

  @override
  bool get isTimeLocal;
  @override
  dynamic Function(bool) get onTabSelected;
  @override
  @JsonKey(ignore: true)
  _$_ViewModelCopyWith<__ViewModel> get copyWith;
}
