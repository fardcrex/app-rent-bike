import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:redux/redux.dart';

final Reducer<List<HorarioDto>> horariosReducer = combineReducers<List<HorarioDto>>([
  TypedReducer<List<HorarioDto>, SetHorariosAction>(_showHorariosReducer),
  TypedReducer<List<HorarioDto>, PressSwitchHorarioAction>(_setLoadingHorarioReducer),
]);

List<HorarioDto> _showHorariosReducer(List<HorarioDto> state, SetHorariosAction action) {
  if (state.isEmpty) return List.unmodifiable(action.listHorarios);
  return List.unmodifiable(List.generate(
    state.length,
    (index) => action.listHorarios[index].copyWith(isLoading: state[index]?.isLoading ?? false),
  ));
}

List<HorarioDto> _setLoadingHorarioReducer(List<HorarioDto> state, PressSwitchHorarioAction action) {
  return List.unmodifiable(
    state.map((dto) => dto.uidHorario == action.uidHorario ? dto.copyWith(isLoading: !dto.isLoading) : dto).toList(),
  );
}

final successOrFailureReducer = combineReducers<Option<Either<HorarioFailure, HorarioSuccess>>>([
  TypedReducer<Option<Either<HorarioFailure, HorarioSuccess>>, ShowSuccesOrFailureAction>(_showSuccessOrFailureReducer),
]);

Option<Either<HorarioFailure, HorarioSuccess>> _showSuccessOrFailureReducer(
  Option<Either<HorarioFailure, HorarioSuccess>> state,
  ShowSuccesOrFailureAction action,
) {
  return action.successOrFailureHorarioOption;
}
