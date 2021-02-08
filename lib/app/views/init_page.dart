import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redux/redux.dart';

import 'home_page.dart';
import 'horarios_page/wrapper_horarios.dart';
import 'info_page/info_page.dart';
import 'rentas_page/rentas_page.dart';

part 'init_page.freezed.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      onDispose: (store) {},
      onInit: (store) => store.dispatch(LoadDataAction()),
      converter: _ViewModel.fromStore,
      distinct: true,
      builder: (context, vm) {
        final styleText = GoogleFonts.sourceSansPro(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        );
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);

        return HomePage(
          body: vm.appMenu.map(
            horarios: (_) => WrapperHorariosPage(),
            rentas: (_) => const RentasPage(),
            info: (_) => const InfoPage(),
          ),
          titlePage: vm.appMenu.map(
            horarios: (_) => 'Horarios Disponibles',
            rentas: (_) => 'Mis Rentas',
            info: (_) => 'Acerca de la App',
          ),
          action: vm.appMenu.map(
            horarios: (_) => vm.isTimeLocal
                ? [Text('Hora', style: styleText), Text('local', style: styleText)]
                : [Text('GTM-5', style: styleText)],
            rentas: (_) => [],
            info: (_) => [],
          ),
        );
      },
    );
  }
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final AppMenu appMenu,
    final bool isTimeLocal,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      appMenu: store.state.appMenu,
      isTimeLocal: store.state.isTimeLocal,
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xff86A6DF);
    return const Scaffold(
      backgroundColor: color,
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Color(0xfffff5f5),
        ),
      ),
    );
  }
}
