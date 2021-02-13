import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure/success_and_failure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:redux/redux.dart';

final Reducer<BuiltList<HorarioEntity>> horariosReducer = combineReducers<BuiltList<HorarioEntity>>([
  TypedReducer<BuiltList<HorarioEntity>, SetHorariosAction>(_showHorariosReducer),
  TypedReducer<BuiltList<HorarioEntity>, PressSwitchHorarioAction>(_setLoadingHorarioReducer),
]);

BuiltList<HorarioEntity> _showHorariosReducer(BuiltList<HorarioEntity> state, SetHorariosAction action) {
  return action.listHorarios;
}

BuiltList<HorarioEntity> _setLoadingHorarioReducer(BuiltList<HorarioEntity> state, PressSwitchHorarioAction action) {
  /*  return BuiltList.of(
    state.map((dto) => dto.uidHorario == action.uidHorario ? dto.copyWith(isLoading: !dto.isLoading) : dto),
  ); */

  return state.rebuild((list) => list.map((horario) =>
      horario.uidHorario == action.uidHorario ? horario.copyWith(isLoading: !horario.isLoading) : horario));
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
