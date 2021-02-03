import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:redux/redux.dart';

import 'data_prueba_middleware.dart';
import 'horarios_middleware.dart';

List<Middleware<AppState>> createStoreTodosMiddleware() {
  final loadDataMiddleware = getLoadDataMiddleware();
  final pressSwitchMiddleware = getPressSwitchMiddleware();

  return [
    TypedMiddleware<AppState, LoadDataAction>(loadDataMiddleware),
    TypedMiddleware<AppState, PressSwitchHorarioAction>(pressSwitchMiddleware),
  ];
}
