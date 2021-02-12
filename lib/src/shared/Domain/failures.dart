import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.valueIsNegative({
    @required T failedValue,
  }) = ValueIsNegative<T>;
  const factory ValueFailure.valueExceded({
    @required T failedValue,
  }) = ValueExceded<T>;
  /*  const factory ValueFailure.horarioFormatIncorrect({
    @required T failedValue,
  }) = ValueExceded<T>; */
}
