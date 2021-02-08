import 'package:app_rent_bike/app/Redux/actions/horarios_action.dart';
import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/src/shared/mixins.dart';
import 'package:rxdart/rxdart.dart';
import 'package:redux_epics/redux_epics.dart';

import 'horarios_middleware.dart';

Stream<dynamic> Function(Stream<dynamic>, EpicStore<AppState>) getEpicMiddlewares() {
  final repositoryHorario = getIt<InterfaceHorarioRepository>();

  return combineEpics<AppState>(
    [
      HorariosEpic(repositoryHorario),
      TimerNowGTM5Epic(),
    ],
  );
}

class TimerNowGTM5Epic with DateTimeMixin implements EpicClass<AppState> {
  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    final dateNow = dateTimeGmt5;
    final millisecondsToNextSecond = 1000 - dateNow.millisecond;
    return actions.whereType<InitStreamHorariosAction>().switchMap((action) {
      return ConcatStream([
        TimerStream(dateNow.add(Duration(milliseconds: millisecondsToNextSecond)),
            Duration(milliseconds: millisecondsToNextSecond)),
        Stream.periodic(const Duration(seconds: 1)).map((_) => dateTimeGmt5),
      ]).map((event) => UpdateDateTimeAction(event)).takeUntil(actions.whereType<CancelStreamHorariosAction>());
    });
  }
}
