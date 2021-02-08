import 'package:app_rent_bike/app/Redux/selectors/selectors.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/app/widgets/neu_card.dart';
import 'package:app_rent_bike/app/widgets/neu_card_renta.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/shared/mixins.dart';
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
      builder: (context, vm) {
        final List<Widget> list = vm.isLoading
            ? _getCardsLoading()
            : _getCardsHorarios(
                vm.horariosList,
                vm.uidUser,
                dateTimeNow: vm.dateTimeNow,
                isTimeLocal: vm.isTimeLocal ?? false,
              );
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return RentasPage(listWidget: list);
      },
    );
  }

  List<Widget> _getCardsLoading() {
    return List.generate(10, (index) => const NMCardLoading());
  }

  List<Widget> _getCardsHorarios(
    List<HorarioDto> horariosList,
    String uidUser, {
    bool isTimeLocal,
    DateTime dateTimeNow,
  }) {
    return horariosList.map((dto) {
      final diferenceTime = DateTime.now().timeZoneOffset;
      final diferenceHour = isTimeLocal ? (-DateTimeMixin.diferenceHourGTM + diferenceTime.inHours) : 0;

      final isToday = !isHisTimePassed(dto);
      final isVigente = isHisTimeVigente(dto);

      final timeInit = DateTime(2000, 1, isToday ? 1 : 2, dto.hourInit, dto.minuteInit);
      final timeFinish = DateTime(2000, 1, 1, dto.hourFinish, dto.minuteFinish);
      final timeNow = DateTime(2000, 1, 1, dateTimeNow.hour, dateTimeNow.minute, dateTimeNow.second);

      final timeInitFormat = timeInit.add(Duration(hours: diferenceHour));
      final timeFinishFormat = timeFinish.add(Duration(hours: diferenceHour));

      final tiempoFaltante = timeInit.difference(timeNow);
      final tiempoParaEmpezar = timeFinish.difference(timeNow);

      final label = isVigente ? getTextTime(tiempoParaEmpezar) : getTextTime(tiempoFaltante);

      final day = isToday ? 'Hoy' : 'Mañana';
      final subTitle = isVigente ? 'Termina en:' : 'Comienza en:';

      return NMCardRenta(
        uidHorario: dto.uidHorario,
        horaFin: timeFinishFormat.hour,
        horaInicio: timeInitFormat.hour,
        subTitle: subTitle,
        minuteFin: timeFinishFormat.minute,
        minuteInicio: timeInitFormat.minute,
        label: tiempoFaltante.isNegative && tiempoParaEmpezar.isNegative && isToday ? '' : label,
        day: day,
        key: Key(dto.uidHorario),
      );
    }).toList();
  }

  String getTextTime(Duration duration) =>
      '${duration.inHours == 0 ? "" : "${duration.inHours}h"} ${duration.inMinutes % 60 == 0 ? "" : "${duration.inMinutes % 60}m"} ${duration.inSeconds % 60}s';
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final AppMenu appMenu,
    final bool isLoading,
    final String uidUser,
    final bool isTimeLocal,
    final DateTime dateTimeNow,
    final List<HorarioDto> horariosList,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
        appMenu: store.state.appMenu,
        isLoading: store.state.isLoading,
        dateTimeNow: store.state.dateTimeNow,
        isTimeLocal: store.state.isTimeLocal,
        horariosList: getAllMyRentas(idUser: store.state.uidUser, list: store.state.horarios),
        uidUser: store.state.uidUser);
  }
}
