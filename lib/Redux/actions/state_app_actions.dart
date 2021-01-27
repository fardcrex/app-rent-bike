import 'package:app_rent_bike/Redux/state/enums/enums.dart';

class UpdateMenuAction {
  UpdateMenuAction(this.newTab);
  final AppMenu newTab;
}

class ChangeToLoadingAction {}

class ChangeToNotLoadingAction {}

class LoadDataAction {}
