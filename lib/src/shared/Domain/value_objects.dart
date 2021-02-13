import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<F, T> {
  const ValueObject();
  Either<F, T> get value;

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<F, T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
