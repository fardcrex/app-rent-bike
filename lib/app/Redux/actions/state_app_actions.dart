import 'package:app_rent_bike/app/Redux/state/enums/enums.dart';

class UpdateMenuAction {
  UpdateMenuAction(this.newTab);
  final AppMenu newTab;
}

class ChangeToLoadingAction {}

class ChangeToNotLoadingAction {}

class LoadDataAction {}

class ShowDataPruebaAction {
  final List<String> dataList;

  ShowDataPruebaAction(this.dataList);
}
