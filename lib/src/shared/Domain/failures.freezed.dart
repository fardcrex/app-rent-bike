// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ValueIsNegative<T> valueIsNegative<T>({@required T failedValue}) {
    return ValueIsNegative<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ValueExceded<T> valueExceded<T>({@required T failedValue}) {
    return ValueExceded<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult valueIsNegative(T failedValue),
    @required TResult valueExceded(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult valueIsNegative(T failedValue),
    TResult valueExceded(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult valueIsNegative(ValueIsNegative<T> value),
    @required TResult valueExceded(ValueExceded<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult valueIsNegative(ValueIsNegative<T> value),
    TResult valueExceded(ValueExceded<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $ValueIsNegativeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ValueIsNegativeCopyWith(
          ValueIsNegative<T> value, $Res Function(ValueIsNegative<T>) then) =
      _$ValueIsNegativeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueIsNegativeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueIsNegativeCopyWith<T, $Res> {
  _$ValueIsNegativeCopyWithImpl(
      ValueIsNegative<T> _value, $Res Function(ValueIsNegative<T>) _then)
      : super(_value, (v) => _then(v as ValueIsNegative<T>));

  @override
  ValueIsNegative<T> get _value => super._value as ValueIsNegative<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ValueIsNegative<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ValueIsNegative<T>
    with DiagnosticableTreeMixin
    implements ValueIsNegative<T> {
  const _$ValueIsNegative({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.valueIsNegative(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.valueIsNegative'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueIsNegative<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ValueIsNegativeCopyWith<T, ValueIsNegative<T>> get copyWith =>
      _$ValueIsNegativeCopyWithImpl<T, ValueIsNegative<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult valueIsNegative(T failedValue),
    @required TResult valueExceded(T failedValue),
  }) {
    assert(valueIsNegative != null);
    assert(valueExceded != null);
    return valueIsNegative(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult valueIsNegative(T failedValue),
    TResult valueExceded(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueIsNegative != null) {
      return valueIsNegative(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult valueIsNegative(ValueIsNegative<T> value),
    @required TResult valueExceded(ValueExceded<T> value),
  }) {
    assert(valueIsNegative != null);
    assert(valueExceded != null);
    return valueIsNegative(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult valueIsNegative(ValueIsNegative<T> value),
    TResult valueExceded(ValueExceded<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueIsNegative != null) {
      return valueIsNegative(this);
    }
    return orElse();
  }
}

abstract class ValueIsNegative<T> implements ValueFailure<T> {
  const factory ValueIsNegative({@required T failedValue}) =
      _$ValueIsNegative<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ValueIsNegativeCopyWith<T, ValueIsNegative<T>> get copyWith;
}

/// @nodoc
abstract class $ValueExcededCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ValueExcededCopyWith(
          ValueExceded<T> value, $Res Function(ValueExceded<T>) then) =
      _$ValueExcededCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueExcededCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueExcededCopyWith<T, $Res> {
  _$ValueExcededCopyWithImpl(
      ValueExceded<T> _value, $Res Function(ValueExceded<T>) _then)
      : super(_value, (v) => _then(v as ValueExceded<T>));

  @override
  ValueExceded<T> get _value => super._value as ValueExceded<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ValueExceded<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ValueExceded<T>
    with DiagnosticableTreeMixin
    implements ValueExceded<T> {
  const _$ValueExceded({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.valueExceded(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.valueExceded'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueExceded<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ValueExcededCopyWith<T, ValueExceded<T>> get copyWith =>
      _$ValueExcededCopyWithImpl<T, ValueExceded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult valueIsNegative(T failedValue),
    @required TResult valueExceded(T failedValue),
  }) {
    assert(valueIsNegative != null);
    assert(valueExceded != null);
    return valueExceded(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult valueIsNegative(T failedValue),
    TResult valueExceded(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueExceded != null) {
      return valueExceded(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult valueIsNegative(ValueIsNegative<T> value),
    @required TResult valueExceded(ValueExceded<T> value),
  }) {
    assert(valueIsNegative != null);
    assert(valueExceded != null);
    return valueExceded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult valueIsNegative(ValueIsNegative<T> value),
    TResult valueExceded(ValueExceded<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueExceded != null) {
      return valueExceded(this);
    }
    return orElse();
  }
}

abstract class ValueExceded<T> implements ValueFailure<T> {
  const factory ValueExceded({@required T failedValue}) = _$ValueExceded<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ValueExcededCopyWith<T, ValueExceded<T>> get copyWith;
}
