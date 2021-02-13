import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/Horarios/Application/update_horario.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class HorariosEpic implements EpicClass<AppState> {
  final InterfaceHorarioRepository service;

  HorariosEpic(this.service);

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<InitStreamHorariosAction>().switchMap((InitStreamHorariosAction requestAction) {
      return service
          .getHorariosStream()
          .map((list) => BuiltList.of(
                list.map((e) => HorarioEntity.fromDto(e).fold((l) => l, (r) => r)).whereType<HorarioEntity>().toList(),
              ))
          .map((list) => filterHorariosLoading(store.state.horarios, list, store.state.uidUser))
          .map((list) => list.rebuild((builder) => builder.sort((a, b) => (a.totalMinutes).compareTo(b.totalMinutes))))
          .map((list) => SetHorariosAction(list)) // 7
          .takeUntil(actions.whereType<CancelStreamHorariosAction>()); // 8
    });
  }

  BuiltList<HorarioEntity> filterHorariosLoading(
    BuiltList<HorarioEntity> horariosBefore,
    BuiltList<HorarioEntity> horariosNew,
    String uidUser,
  ) {
    final horarioUpdate = horariosBefore.where((element) => element.isLoading ?? false).toList();
    if (horarioUpdate.isEmpty) return horariosNew;

    final iudHowChanges = <String>[];
    for (final horario in horariosNew) {
      for (final dtoUpdate in horarioUpdate) {
        if (horario.uidHorario == dtoUpdate.uidHorario) {
          if ((horario.listUsers.contains(uidUser) && !dtoUpdate.listUsers.contains(uidUser)) ||
              (!horario.listUsers.contains(uidUser) && dtoUpdate.listUsers.contains(uidUser))) {
          } else {
            iudHowChanges.add(horario.uidHorario);
          }
          continue;
        }
      }
    }
    return horariosNew
        .rebuild((list) => list.map((e) => iudHowChanges.contains(e.uidHorario) ? e.copyWith(isLoading: true) : e));
  }
}

Function(
  Store<AppState> store,
  PressSwitchHorarioAction action,
  NextDispatcher next,
) getPressSwitchMiddleware() {
  final repositoryHorario = getIt<InterfaceHorarioRepository>();
  final updateHorario = UpdateHorario(repositoryHorario);

  return (Store<AppState> store, PressSwitchHorarioAction action, NextDispatcher next) {
    final horarioEntity = store.state.horarios.firstWhere((element) => element.uidHorario == action.uidHorario);
    if (horarioEntity?.isLoading ?? true) return;
    next(action);
    next(ShowSuccesOrFailureAction(none()));
    updateHorario.execute(horario: horarioEntity, uidUser: store.state.uidUser).then((value) {
      next(ShowSuccesOrFailureAction(optionOf(value)));
      if (value.isLeft()) next(action);
    });
    // next(ChangeToNotLoadingAction());
  };
}
