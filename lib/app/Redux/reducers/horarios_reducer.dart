import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:redux/redux.dart';

final Reducer<List<HorarioDto>> horariosReducer = combineReducers<List<HorarioDto>>([
  TypedReducer<List<HorarioDto>, SetHorariosAction>(_showDataPruebaReducer),
]);

List<HorarioDto> _showDataPruebaReducer(List<HorarioDto> state, SetHorariosAction action) {
  return List.unmodifiable(action.listHorarios);
}
