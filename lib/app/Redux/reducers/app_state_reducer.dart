import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      isLoading: _changeLoadingReducer(state.isLoading, action),
      appMenu: menusReducer(state.appMenu, action),
      dataPrueba: _dataPruebaReducer(state.dataPrueba, action));
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

final Reducer<List<String>> _dataPruebaReducer = combineReducers<List<String>>([
  TypedReducer<List<String>, ShowDataPruebaAction>(_showDataPruebaReducer),
]);

List<String> _showDataPruebaReducer(List<String> state, ShowDataPruebaAction action) {
  return List.unmodifiable(action.dataList);
}
