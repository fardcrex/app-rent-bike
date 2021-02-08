import 'package:freezed_annotation/freezed_annotation.dart';
part 'success_and_failure.freezed.dart';

@freezed
abstract class HorarioSuccess with _$HorarioSuccess {
  const factory HorarioSuccess.selectBike() = SelectBike;
  const factory HorarioSuccess.cancelBike() = CancelBike;
}

@freezed
abstract class HorarioFailure with _$HorarioFailure {
  const factory HorarioFailure.emptyBikes() = EmptyBikes;
  const factory HorarioFailure.errorSelectBike() = ErrorSelectBike;
  const factory HorarioFailure.errorCancelBike() = ErrorCancelBike;
}
