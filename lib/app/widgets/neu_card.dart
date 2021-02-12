import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shimmer/shimmer.dart';

import './styles.dart';

extension WidgetOnClick on Widget {
  Widget onClick(VoidCallback onClick) => GestureDetector(
        onTap: onClick,
        child: this,
      );
}

class NMCard extends StatelessWidget with StyleAppMixin {
  final bool active;
  final bool isEmpty;
  final bool isLoading;
  final String bikesAvailables;
  final String uidHorario;
  final int horaInicio;
  final int minuteInicio;
  final int horaFin;
  final int minuteFin;
  final String day;
  const NMCard({
    Key key,
    this.active,
    this.bikesAvailables,
    this.isEmpty = false,
    this.horaInicio = 0,
    this.minuteInicio = 0,
    this.horaFin = 0,
    this.minuteFin = 0,
    this.day,
    this.uidHorario,
    this.isLoading = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final colorLoading = Colors.blueGrey[200];
    final textStyleTitle = Theme.of(context).textTheme.bodyText2.copyWith(
          color: isLoading ? colorLoading : Theme.of(context).focusColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        );
    final textStyleSubTitle = TextStyle(color: isLoading ? colorLoading : Theme.of(context).primaryColor, fontSize: 16);

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 100.0),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 9,
          top: 9,
          left: 20,
          right: 20,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        decoration: nMbox,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bicicletas  disponibles:', style: textStyleTitle),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('$day ', style: textStyleSubTitle),
                    const SizedBox(width: 4),
                    Text(
                        "${horaInicio > 9 ? '' : 0}$horaInicio:"
                        "${minuteInicio > 9 ? '' : 0}$minuteInicio  - ",
                        style: textStyleSubTitle),
                    Text(
                        "${horaFin > 9 ? '' : 0}$horaFin:"
                        "${minuteFin > 9 ? '' : 0}$minuteFin",
                        style: textStyleSubTitle)
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              ' $bikesAvailables',
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: isLoading ? colorLoading : Theme.of(context).focusColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const Spacer(),
            AnimatedContainer(
              key: key,
              duration: const Duration(milliseconds: 500),
              decoration: isLoading
                  ? nMboxInvert
                  : active
                      ? nMboxInvertActive
                      : isEmpty
                          ? nMboxEmpty
                          : nMboxInvert,
              width: 70,
              height: active
                  ? 40
                  : isEmpty
                      ? 40
                      : 44,
              child: AnimatedContainer(
                /*  width: 25,
                height: 25, */
                key: key,
                duration: const Duration(milliseconds: 250),
                margin: active
                    ? const EdgeInsets.fromLTRB(35, 5, 5, 5)
                    : isEmpty
                        ? const EdgeInsets.fromLTRB(5, 5, 35, 5)
                        : const EdgeInsets.fromLTRB(6, 7, 35, 7),
                decoration: nMbtn,
              ),
            ).onClick(() {
              StoreProvider.of<AppState>(context).dispatch(PressSwitchHorarioAction(uidHorario));
            }),
          ],
        ),
      ),
    );
  }
}

class NMCardLoading extends StatelessWidget with StyleAppMixin {
  final bool active;

  const NMCardLoading({
    this.active,
  });
  @override
  Widget build(BuildContext context) {
    final _widthView = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 100.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        decoration: nMbox,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            Shimmer.fromColors(
              highlightColor: const Color(0xffF1F6FA),
              baseColor: const Color(0xffF1F6FA).mix(Colors.black, .05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  getLoadingTIme(_widthView * 0.5),
                  const SizedBox(height: 10),
                  getLoadingTIme(_widthView * 0.45),
                ],
              ),
            ),
            const SizedBox(width: 10),
            /*   Container(
              width: 140.0,
              height: 20.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
            ), */
            const Spacer(),
            AnimatedContainer(
              curve: Curves.easeInBack,
              duration: const Duration(seconds: 2),
              decoration: nMboxInvert,
              width: 74,
              height: 44,
              child: Shimmer.fromColors(
                highlightColor: const Color(0xffF1F6FA),
                baseColor: const Color(0xffF1F6FA).mix(Colors.black, .05),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                  decoration: nMboxInvert,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getLoadingTIme(double width) => Container(
      width: width,
      height: 15.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Colors.white));
}
