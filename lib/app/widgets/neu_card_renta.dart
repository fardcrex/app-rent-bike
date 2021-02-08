import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './styles.dart';
import 'neu_button.dart';

extension WidgetOnClick on Widget {
  Widget onClick(VoidCallback onClick) => GestureDetector(
        onTap: onClick,
        child: this,
      );
}

class NMCardRenta extends StatelessWidget with StyleAppMixin {
  final String label;
  final String uidHorario;
  final String subTitle;
  final int horaInicio;
  final int minuteInicio;
  final int horaFin;
  final int minuteFin;
  final String day;
  const NMCardRenta({
    Key key,
    this.label,
    this.horaInicio = 0,
    this.minuteInicio = 0,
    this.horaFin = 0,
    this.minuteFin = 0,
    this.day,
    this.uidHorario,
    this.subTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textStyleTitle = TextStyle(color: Theme.of(context).primaryColor, fontSize: 16);
    TextStyle textStyleSubTitle(double size) => Theme.of(context).textTheme.bodyText2.copyWith(
          color: Theme.of(context).focusColor,
          fontSize: size,
          fontWeight: FontWeight.w500,
        );

    return AnimatedContainer(
      key: key,
      duration: const Duration(milliseconds: 500),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 100.0),
        child: Container(
          margin: const EdgeInsets.only(bottom: 9, top: 9, left: 20, right: 20),
          padding: const EdgeInsets.only(left: 28, right: 20, top: 12, bottom: 12),
          decoration: nMbox,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //ddsadconst SizedBox(width: 10),
              //const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Text('$day ', style: textStyleTitle),
                      const SizedBox(width: 2),
                      Text(
                          "${horaInicio > 9 ? '' : 0}$horaInicio:"
                          "${minuteInicio > 9 ? '' : 0}$minuteInicio  - ",
                          style: textStyleTitle),
                      Text(
                          "${horaFin > 9 ? '' : 0}$horaFin:"
                          "${minuteFin > 9 ? '' : 0}$minuteFin",
                          style: textStyleTitle)
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(subTitle, style: textStyleSubTitle(16)),
                      const SizedBox(width: 5),
                      Text(label, style: textStyleSubTitle(18)),
                    ],
                  ),
                ],
              ),

              NMButtonWithState(
                onClick: () => StoreProvider.of<AppState>(context).dispatch(PressSwitchHorarioAction(uidHorario)),
                icon: const Icon(
                  Icons.alarm_off,
                  color: Colors.red,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
