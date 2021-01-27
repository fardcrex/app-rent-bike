import 'package:app_rent_bike/Features/DataPrueba/Application/get_data.dart';
import 'package:app_rent_bike/Redux/actions/state_app_actions.dart';
import 'package:app_rent_bike/Redux/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreTodosMiddleware({
  @required GetData getDataPrueba,
}) {
  final loadDataMiddleware = getLoadDataMiddleware(getDataPrueba);
  return [
    TypedMiddleware<AppState, LoadDataAction>(loadDataMiddleware),
  ];
}

Middleware<AppState> getLoadDataMiddleware(GetData getDataPrueba) {
  return (Store<AppState> store, action, NextDispatcher next) {
    getDataPrueba.execute().then((value) => next(ChangeToNotLoadingAction()));
    // next(ChangeToNotLoadingAction());
  };
}
