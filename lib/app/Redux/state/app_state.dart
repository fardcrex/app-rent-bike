import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/enums.dart';
export 'enums/enums.dart';
part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    final AppMenu appMenu,
    final bool isLoading,
    final List<String> dataPrueba,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        appMenu: AppMenu.horarios(),
        isLoading: true,
        dataPrueba: [],
      );
}
