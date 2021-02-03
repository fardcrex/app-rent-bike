import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../neu_button.dart';

part 'tab_selector.freezed.dart';

class TabSelector extends StatelessWidget {
  const TabSelector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: getNavigationBar(
            vm.appMenu,
            onTabSelected: vm.onTabSelected,
          ),
        );

        /*  BottomNavigationBar(
            backgroundColor: Theme.of(context).canvasColor,
            currentIndex: vm.appMenu.getIntFromType(),
            onTap: vm.onTabSelected,
            selectedItemColor: Theme.of(context).primaryColor,
            items: _getNBI()); */
      },
    );
  }

  List<Widget> getNavigationBar(AppMenu appMenu, {Function(AppMenu) onTabSelected, Color colorAtive}) {
    final listIcons = <Widget>[];
    listIcons.add(
      appMenu == const AppMenu.horarios()
          ? NMButton(
              down: true,
              icon: Image.asset('./assets/horario-off.png'),
              onClick: () => onTabSelected(const AppMenu.horarios()),
            )
          : NMButton(
              down: false,
              icon: Image.asset('./assets/horario.png'),
              onClick: () => onTabSelected(const AppMenu.horarios()),
            ),
    );
    listIcons.add(
      appMenu == const AppMenu.rentas()
          ? NMButton(
              down: true,
              icon: Image.asset('./assets/bicycle-off.png'),
              onClick: () => onTabSelected(const AppMenu.rentas()),
            )
          : NMButton(
              down: false,
              icon: Image.asset('./assets/bicycle.png'),
              onClick: () => onTabSelected(const AppMenu.rentas()),
            ),
    );
    listIcons.add(
      appMenu == const AppMenu.info()
          ? NMButton(
              down: true,
              icon: Image.asset('./assets/information-off.png'),
              onClick: () => onTabSelected(const AppMenu.info()),
            )
          : NMButton(
              down: false,
              icon: Image.asset('./assets/information.png'),
              onClick: () => onTabSelected(const AppMenu.info()),
            ),
    );
    return listIcons;
  }
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final AppMenu appMenu,
    final Function(AppMenu) onTabSelected,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      appMenu: store.state.appMenu,
      onTabSelected: (appMenu) {
        store.dispatch(UpdateMenuAction(appMenu));
      },
    );
  }
}
