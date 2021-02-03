import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/app/widgets/neu_card.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/shared/mixins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'horarios_page.dart';

part 'wrapper_horarios.freezed.dart';

class WrapperHorariosPage extends StatelessWidget with DateTimeMixin {
  WrapperHorariosPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      onDispose: (store) => store.dispatch(CancelStreamHorariosAction()),
      onInit: (store) => store.dispatch(InitStreamHorariosAction()),
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        final List<Widget> list = vm.isLoading || vm.horariosList.isEmpty
            ? _getCardsLoading()
            : _getCardsHorarios(vm.horariosList, vm.uidUser, isTimeLocal: vm.isTimeLocal ?? false);
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return HorariosPage(
          listWidget: list,
        );
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
  }) {
    return horariosList.map((dto) {
      bool isToday;
      String day;
      final diferenceTime = DateTime.now().timeZoneOffset;
      final diferenceHour = isTimeLocal ? (-DateTimeMixin.diferenceHourGTM + diferenceTime.inHours) : 0;
      try {
        isToday = !isAnoherDayMixin(dateTimeGmt5.millisecondsSinceEpoch, dto.timestamp);
        day = isToday ? 'Hoy' : 'Mañana';
      } catch (e) {
        day = 'Dia aun no disponible';
      }

      final horarioInit = DateTime(2000, 1, 1, dto.hourInit, dto.minuteInit).add(Duration(hours: diferenceHour));
      final horarioFinish = DateTime(2000, 1, 1, dto.hourFinish, dto.minuteFinish).add(Duration(hours: diferenceHour));
      return NMCard(
        uidHorario: dto.uidHorario,
        active: dto.idUsers.toList().contains(uidUser),
        horaFin: horarioFinish.hour,
        horaInicio: horarioInit.hour,
        minuteFin: horarioFinish.minute,
        minuteInicio: !isToday
            ? horarioInit.minute
            : horarioInit.hour * 60 + horarioInit.minute <
                    (dateTimeGmt5.hour + diferenceHour) * 60 + dateTimeGmt5.minute
                ? dateTimeGmt5.minute
                : horarioInit.minute,
        label: '${dto.bikesAvailables - dto.idUsers.length}',
        empty: dto.bikesAvailables == dto.idUsers.length,
        day: day,
        key: Key(dto.uidHorario),
      );
    }).toList();
  }
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final AppMenu appMenu,
    final bool isLoading,
    final String uidUser,
    final bool isTimeLocal,
    final List<HorarioDto> horariosList,
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
