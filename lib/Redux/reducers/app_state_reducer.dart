import 'package:app_rent_bike/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/Redux/state/app_state.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    isLoading: _changeLoadingReducer(state.isLoading, action),
    appMenu: menusReducer(state.appMenu, action),
  );
}

final AppMenu Function(AppMenu, dynamic) menusReducer = combineReducers<AppMenu>([
  TypedReducer<AppMenu, UpdateMenuAction>(_activeTabReducer),
]);

AppMenu _activeTabReducer(AppMenu activeTab, UpdateMenuAction action) {
  return action.newTab;
}

final bool Function(bool, dynamic) _changeLoadingReducer = combineReducers<bool>([
  TypedReducer<bool, ChangeToLoadingAction>(_changeToLoading),
  TypedReducer<bool, ChangeToNotLoadingAction>(_changeToNotLoading),
]);

bool _changeToLoading(bool state, ChangeToLoadingAction action) {
  return true;
}

bool _changeToNotLoading(bool state, ChangeToNotLoadingAction action) {
  return false;
}
