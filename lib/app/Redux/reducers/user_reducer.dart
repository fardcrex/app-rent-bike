import 'package:app_rent_bike/app/Redux/actions/user_action.dart';
import 'package:redux/redux.dart';

final Reducer<String> userReducer = combineReducers<String>([
  TypedReducer<String, SetDataUserAction>(_showDataPruebaReducer),
]);

String _showDataPruebaReducer(String state, SetDataUserAction action) {
  return action.uidUser;
}
