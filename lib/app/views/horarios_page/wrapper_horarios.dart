import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/app/widgets/neu_card.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'horarios_page.dart';

part 'wrapper_horarios.freezed.dart';

class WrapperHorariosPage extends StatelessWidget {
  const WrapperHorariosPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      /*   onDispose: (store) => store.dispatch(CancelStreamHorariosAction()),
      onInit: (store) => store.dispatch(InitStreamHorariosAction()), */
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        final List<Widget> list = vm.isLoading || vm.horariosList.isEmpty
            ? _getCardsLoading()
            : vm.horariosList
                .map((horario) => NMCard(
                      isLoading: horario.isLoading,
                      uidHorario: horario.uidHorario,
                      active: horario.isActive(vm.uidUser),
                      horaFin: horario.getHourFinish(isTimeLocal: vm.isTimeLocal),
                      horaInicio: horario.getHourInit(isTimeLocal: vm.isTimeLocal),
                      minuteFin: horario.minuteFinishValue,
                      minuteInicio: horario.minuteInitValue,
                      bikesAvailables: horario.bikesAvailables,
                      isEmpty: horario.isEmptyBikeAvailables,
                      day: horario.isToday ? 'Hoy' : 'Mañana',
                      key: Key(horario.uidHorario),
                    ))
                .toList();

        return HorariosPage(
          listWidget: list,
        );
      },
    );
  }

  List<Widget> _getCardsLoading() {
    return List.generate(10, (index) => const NMCardLoading());
  }
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final AppMenu appMenu,
    final bool isLoading,
    final String uidUser,
    final bool isTimeLocal,
    final BuiltList<HorarioEntity> horariosList,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
        appMenu: store.state.appMenu,
        isLoading: store.state.isLoading,
        isTimeLocal: store.state.isTimeLocal,
        horariosList: store.state.horarios,
        uidUser: store.state.uidUser);
  }
}
