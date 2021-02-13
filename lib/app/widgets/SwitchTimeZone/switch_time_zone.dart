import 'package:app_rent_bike/app/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/app/Redux/state/app_state.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:app_rent_bike/src/shared/Domain/interface_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../neu_button.dart';
import '../styles.dart';

part 'switch_time_zone.freezed.dart';

class SwitchTimeZone extends StatelessWidget with StyleAppMixin {
  const SwitchTimeZone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return AnimatedContainer(
          key: key,
          duration: const Duration(milliseconds: 500),
          decoration: vm.isTimeLocal ? nMboxInvert.copyWith(color: Theme.of(context).accentColor) : nMboxInvert,
          width: 70,
          height: vm.isTimeLocal ? 40 : 44,
          child: AnimatedContainer(
            /*  width: 25,
                  height: 25, */
            key: key,
            duration: const Duration(milliseconds: 250),
            margin: vm.isTimeLocal ? const EdgeInsets.fromLTRB(35, 5, 5, 5) : const EdgeInsets.fromLTRB(6, 7, 35, 7),
            decoration: nMbtn,
          ),
        ).onClick(() {
          vm.onTabSelected(vm.isTimeLocal);
        });
      },
    );
  }
}

@freezed
abstract class _ViewModel with _$_ViewModel {
  const factory _ViewModel({
    final bool isTimeLocal,
    final Function(bool) onTabSelected,
  }) = __ViewModel;

  // ignore: prefer_constructors_over_static_methods
  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      isTimeLocal: store.state.isTimeLocal,
      onTabSelected: (bool isTimeLocal) {
        final fromSettings = getIt<InterfaceUserSettingsRepository>();
        fromSettings.saveLocalTimeSetting(isLocalTime: !isTimeLocal);
        store.dispatch(ChangeTimeZone());
      },
    );
  }
}
