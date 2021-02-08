import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/reducers/user_reducer.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:redux/redux.dart';

import 'horarios_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      isLoading: _changeLoadingReducer(state.isLoading, action),
      appMenu: menusReducer(state.appMenu, action),
      uidUser: userReducer(state.uidUser, action),
      isTimeLocal: timeZoneReducer(state.isTimeLocal, action),
      horarios: horariosReducer(state.horarios, action));
}

//----------------------------------------------------------------

final Reducer<AppMenu> menusReducer = combineReducers<AppMenu>([
  TypedReducer<AppMenu, UpdateMenuAction>(_activeTabReducer),
]);

AppMenu _activeTabReducer(AppMenu activeTab, UpdateMenuAction action) {
  return action.newTab;
}

//----------------------------------------------------------------

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

//----------------------------------------------------------------

final Reducer<bool> timeZoneReducer = combineReducers<bool>([
  TypedReducer<bool, ChangeTimeZone>(_changeTimeZone),
]);

bool _changeTimeZone(bool state, ChangeTimeZone action) {
  return !state;
}
