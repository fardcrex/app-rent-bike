import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:toast/toast.dart';

void showToast(String msg, BuildContext context, {int duration, int gravity}) {
  Toast.show(msg, context, duration: duration, gravity: gravity);
}

typedef FunctionBuilder = Widget Function(BuildContext context, Option<Either<HorarioFailure, HorarioSuccess>> state);

class ShowerSuccessOrFailure extends StatelessWidget {
  final FunctionBuilder builder;
  const ShowerSuccessOrFailure({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Option<Either<HorarioFailure, HorarioSuccess>>>(
      distinct: true,
      onDidChange: (Option<Either<HorarioFailure, HorarioSuccess>> editFailureOrSuccessOption) {
        editFailureOrSuccessOption.fold(
            () {},
            (either) => showToast(
                  either.fold(
                    (failure) => failure.map(
                      emptyBikes: (_) => 'No hay bicicletas disponibles',
                      errorSelectBike: (_) => 'Problemas de conexión',
                      errorCancelBike: (_) => 'Problemas de conexión',
                    ),
                    (success) => success.map(
                      selectBike: (_) => 'Bicicleta rentada!',
                      cancelBike: (_) => 'Cancelación exitosa',
                    ),
                  ),
                  context,
                  duration: 1,
                ));
      },
      converter: (Store<AppState> store) => store.state.successOrFailureHorarioOption,
      builder: builder,
    );
  }
}
