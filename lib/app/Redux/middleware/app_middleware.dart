import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:redux/redux.dart';

import 'data_prueba_middleware.dart';

List<Middleware<AppState>> createStoreTodosMiddleware() {
  final loadDataMiddleware = getLoadDataMiddleware();

  return [
    TypedMiddleware<AppState, LoadDataAction>(loadDataMiddleware),
  ];
}
