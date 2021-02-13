import 'package:app_rent_bike/src/shared/Domain/failures.dart';
import 'package:app_rent_bike/src/shared/Domain/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class Hour extends ValueObject<ValueFailure<int>, int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Hour(int input) {
    assert(input != null);
    return Hour._(
      validateHourValue(input),
    );
  }
  const Hour._(this.value);

  static Either<ValueFailure<int>, int> validateHourValue(int input) {
    if (input < 0) return Left(ValueFailure.valueIsNegative(failedValue: input));
    if (input >= 24) return Left(ValueFailure.valueExceded(failedValue: input));
    return Right(input);
  }
}

@immutable
class Minute extends ValueObject<ValueFailure<int>, int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Minute(int input) {
    assert(input != null);
    return Minute._(
      validateMinuteValue(input),
    );
  }
  const Minute._(this.value);

  static Either<ValueFailure<int>, int> validateMinuteValue(int input) {
    if (input < 0) return Left(ValueFailure.valueIsNegative(failedValue: input));
    if (input >= 60) return Left(ValueFailure.valueExceded(failedValue: input));
    return Right(input);
  }
}

@immutable
class LimitBikesAvailables extends ValueObject<ValueFailure<int>, int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory LimitBikesAvailables(int input) {
    assert(input != null);
    return LimitBikesAvailables._(
      validateLimitBikesAvailablesValue(input),
    );
  }
  const LimitBikesAvailables._(this.value);

  static Either<ValueFailure<int>, int> validateLimitBikesAvailablesValue(int input) {
    if (input < 0) return Left(ValueFailure.valueIsNegative(failedValue: input));
    if (input > 1000) return Left(ValueFailure.valueExceded(failedValue: input));
    return Right(input);
  }
}
