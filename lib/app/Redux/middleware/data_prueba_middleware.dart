import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/src/Horarios/Application/update_horario.dart';
import 'package:redux/redux.dart';
export 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';

Middleware<AppState> getLoadDataMiddleware() {
  final repositoryHorario = getIt<InterfaceHorarioRepository>();
  final getDataPrueba = UpdateHorario(repositoryHorario);

  return (Store<AppState> store, action, NextDispatcher next) {
    getDataPrueba.execute().then((value) => {
          next(ChangeToNotLoadingAction()),
        });
    // next(ChangeToNotLoadingAction());
  };
}
