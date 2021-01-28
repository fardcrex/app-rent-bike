import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'tab_selector.freezed.dart';

class TabSelector extends StatelessWidget {
  const TabSelector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return BottomNavigationBar(
            backgroundColor: Theme.of(context).canvasColor,
            currentIndex: vm.appMenu.getIntFromType(),
            onTap: vm.onTabSelected,
            selectedItemColor: Theme.of(context).primaryColor,
            items: _getNBI());
      },
    );
  }

  List<BottomNavigationBarItem> _getNBI() {
    return [
      const BottomNavigationBarItem(label: 'Horario', icon: Icon(Icons.calendar_today_sharp)),
      const BottomNavigationBarItem(label: 'Rentas', icon: Icon(Icons.bike_scooter_sharp)),
      const BottomNavigationBarItem(label: 'Info', icon: Icon(Icons.info)),
    ];
  }
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final AppMenu appMenu,
    final Function(int) onTabSelected,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      appMenu: store.state.appMenu,
      onTabSelected: (index) {
        store.dispatch(UpdateMenuAction(AppMenu.fromTypeInt(index)));
      },
    );
  }
}
