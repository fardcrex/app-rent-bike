import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/Horarios/Application/update_horario.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class HorariosEpic implements EpicClass<AppState> {
  final InterfaceHorarioRepository service;

  HorariosEpic(this.service);

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<InitStreamHorariosAction>().switchMap((InitStreamHorariosAction requestAction) {
      print('------------ InitStreamHorariosAction --------------');
      return service
          .getHorariosStream()
          .map((list) => SetHorariosAction(list)) // 7
          .takeUntil(actions.whereType<CancelStreamHorariosAction>()); // 8
    });
  }
}

Function(
  Store<AppState> store,
  PressSwitchHorarioAction action,
  NextDispatcher next,
) getPressSwitchMiddleware() {
  final repositoryHorario = getIt<InterfaceHorarioRepository>();
  final getDataPrueba = UpdateHorario(repositoryHorario);

  return (Store<AppState> store, PressSwitchHorarioAction action, NextDispatcher next) {
    getDataPrueba.execute(uidHorario: action.uidHorario, uidUser: store.state.uidUser);
    // next(ChangeToNotLoadingAction());
  };
}
