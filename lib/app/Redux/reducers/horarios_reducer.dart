import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:redux/redux.dart';

final Reducer<List<HorarioDto>> horariosReducer = combineReducers<List<HorarioDto>>([
  TypedReducer<List<HorarioDto>, SetHorariosAction>(_showHorariosReducer),
  TypedReducer<List<HorarioDto>, PressSwitchHorarioAction>(_setLoadingHorarioReducer),
]);

List<HorarioDto> _showHorariosReducer(List<HorarioDto> state, SetHorariosAction action) {
  return List.unmodifiable(action.listHorarios);
}

List<HorarioDto> _setLoadingHorarioReducer(List<HorarioDto> state, PressSwitchHorarioAction action) {
  return List.unmodifiable(
      state.map((dto) => dto.uidHorario == action.uidHorario ? dto.copyWith(isLoading: true) : dto).toList());
}
