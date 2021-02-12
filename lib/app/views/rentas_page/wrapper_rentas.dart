import 'package:app_rent_bike/app/Redux/selectors/selectors.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/app/widgets/neu_card.dart';
import 'package:app_rent_bike/app/widgets/neu_card_renta.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horario_entity/horario_entity.dart';
import 'package:app_rent_bike/src/shared/Domain/mixins.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'rentas_page.dart';

part 'wrapper_rentas.freezed.dart';

class WrapperRentasPage extends StatelessWidget with DateTimeMixin {
  WrapperRentasPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      /*   onDispose: (store) => store.dispatch(CancelStreamHorariosAction()),
      onInit: (store) => store.dispatch(InitStreamHorariosAction()), */
      converter: _ViewModel.fromStore,
      distinct: true,
      builder: (context, vm) {
        final List<Widget> list = vm.isLoading
            ? _getCardsLoading()
            : vm.horariosList
                .toList()
                .map((horario) => horario.isLoading
                    ? Container(height: 102.0)
                    : NMCardRenta(
                        uidHorario: horario.uidHorario,
                        horaFin: horario.getHourFinish(isTimeLocal: vm.isTimeLocal),
                        horaInicio: horario.getHourInit(isTimeLocal: vm.isTimeLocal),
                        subTitle: horario.isHorarioVigente ? 'Termina en:' : 'Comienza en:',
                        minuteFin: horario.minuteFinishValue,
                        minuteInicio: horario.minuteInitValue,
                        textTime: horario.textTimer,
                        day: horario.isToday ? 'Hoy' : 'Mañana',
                        key: Key(horario.uidHorario),
                      ))
                .toList();
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return RentasPage(listWidget: list);
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
        horariosList: getAllMyRentas(idUser: store.state.uidUser, list: store.state.horarios),
        uidUser: store.state.uidUser);
  }
}
