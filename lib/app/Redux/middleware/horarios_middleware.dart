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
          .map((list) {
            final horarioUpdate = store.state.horarios.where((element) => element.isLoading ?? false).toList();
            if (horarioUpdate.isEmpty) return list;
            final uidUser = store.state.uidUser;
            final iudHowChanges = <String>[];
            for (final dto in list) {
              for (final dtoUpdate in horarioUpdate) {
                if (dto.uidHorario == dtoUpdate.uidHorario) {
                  if ((dto.listUsers.contains(uidUser) && !dtoUpdate.listUsers.contains(uidUser)) ||
                      (!dto.listUsers.contains(uidUser) && dtoUpdate.listUsers.contains(uidUser))) {
                  } else {
                    iudHowChanges.add(dto.uidHorario);
                  }
                  continue;
                }
              }
            }
            return list.rebuild(
                (list) => list.map((e) => iudHowChanges.contains(e.uidHorario) ? e.copyWith(isLoading: true) : e));
            //  return list.map((e) => iudHowChanges.contains(e.uidHorario) ? e.copyWith(isLoading: true) : e).toList();
          })
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
