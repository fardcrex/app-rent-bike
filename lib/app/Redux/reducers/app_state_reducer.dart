import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      isLoading: _changeLoadingReducer(state.isLoading, action),
      appMenu: menusReducer(state.appMenu, action),
      uidUser: state.uidUser,
      isTimeLocal: timeZoneReducer(state.isTimeLocal, action),
      horarios: _dataPruebaReducer(state.horarios, action));
}

final Reducer<AppMenu> menusReducer = combineReducers<AppMenu>([
  TypedReducer<AppMenu, UpdateMenuAction>(_activeTabReducer),
]);

AppMenu _activeTabReducer(AppMenu activeTab, UpdateMenuAction action) {
  return action.newTab;
}

final Reducer<bool> _changeLoadingReducer = combineReducers<bool>([
  TypedReducer<bool, ChangeToLoadingAction>(_changeToLoading),
  TypedReducer<bool, ChangeToNotLoadingAction>(_changeToNotLoading),
]);

bool _changeToLoading(bool state, ChangeToLoadingAction action) {
  return true;
}

bool _changeToNotLoading(bool state, ChangeToNotLoadingAction action) {
  return false;
}

final Reducer<List<HorarioDto>> _dataPruebaReducer = combineReducers<List<HorarioDto>>([
  TypedReducer<List<HorarioDto>, SetHorariossAction>(_showDataPruebaReducer),
]);

List<HorarioDto> _showDataPruebaReducer(List<HorarioDto> state, SetHorariossAction action) {
  return List.unmodifiable(action.listHorarios);
}

final Reducer<bool> timeZoneReducer = combineReducers<bool>([
  TypedReducer<bool, ChangeTimeZone>(_changeTimeZone),
]);

bool _changeTimeZone(bool state, ChangeTimeZone action) {
  return !state;
}
