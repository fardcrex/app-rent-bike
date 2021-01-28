import 'package:app_rent_bike/src/DataPrueba/Application/get_data.dart';
import 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';
import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
export 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';

Middleware<AppState> getLoadDataMiddleware() {
  final repository = GetIt.instance<InterfaceDataRepository>();
  final getDataPrueba = GetData(repository);

  return (Store<AppState> store, action, NextDispatcher next) {
    getDataPrueba.execute().then((value) => {
          next(ShowDataPruebaAction(value)),
          next(ChangeToNotLoadingAction()),
        });
    // next(ChangeToNotLoadingAction());
  };
}
