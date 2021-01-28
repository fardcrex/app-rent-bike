import 'package:freezed_annotation/freezed_annotation.dart';
part 'enums.freezed.dart';

@freezed
abstract class AppMenu with _$AppMenu {
  const factory AppMenu.info() = Info;
  const factory AppMenu.horarios() = Horarios;
  const factory AppMenu.rentas() = Rentas;

  factory AppMenu.fromTypeInt(int number) {
    final map = {
      0: const AppMenu.horarios(),
      1: const AppMenu.rentas(),
      2: const AppMenu.info(),
    };
    return map[number] ?? const AppMenu.info();
  }
}

extension GetIntFromType on AppMenu {
  int getIntFromType() {
    // ignore: unnecessary_this
    return this.map(
      horarios: (_) => 0,
      rentas: (_) => 1,
      info: (_) => 2,
    );
  }
}
