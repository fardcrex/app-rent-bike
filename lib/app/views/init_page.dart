import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'home_page.dart';
part 'init_page.freezed.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      onDispose: (store) {},
      onInit: (store) => store.dispatch(LoadDataAction()),
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return vm.isLoading
            ? const LoadingScreen()
            : HomePage(
                dataPrueba: vm.dataPrueba,
                appMenu: vm.appMenu.map(
                  info: (_) => 'info',
                  horarios: (_) => 'horarios',
                  rentas: (_) => 'rentas',
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
    final bool isLoading,
    final List<String> dataPrueba,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      appMenu: store.state.appMenu,
      isLoading: store.state.isLoading,
      dataPrueba: store.state.dataPrueba,
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
