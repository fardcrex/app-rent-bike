import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';

import 'package:redux_epics/redux_epics.dart';

import 'horarios_middleware.dart';

Stream<dynamic> Function(Stream<dynamic>, EpicStore<AppState>) getEpicMiddlewares() {
  final repositoryHorario = getIt<InterfaceHorarioRepository>();

  return combineEpics<AppState>(
    [HorariosEpic(repositoryHorario)],
  );
}
