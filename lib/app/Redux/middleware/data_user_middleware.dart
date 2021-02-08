import 'package:app_rent_bike/app/Redux/actions/user_action.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/Auth/Application/get_data.dart';
import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';
import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:redux/redux.dart';
export 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';

Middleware<AppState> getLoadDataMiddleware() {
  final repositoryData = getIt<InterfaceDataUserRepository>();

  final getDataUser = GetDataUser(repositoryData);

  return (Store<AppState> store, action, NextDispatcher next) {
    getDataUser.execute().then((uid) => uid.fold(
          (l) => null,
          (r) {
            next(ChangeToNotLoadingAction());
            next(SetDataUserAction(r));
          },
        ));
    // next(ChangeToNotLoadingAction());
  };
}
