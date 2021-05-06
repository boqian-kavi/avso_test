import 'package:avso_test/redux/app_state.dart';

import 'actions.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is DrawerIndex) {
    newState.sideDrawerIndex = action.payload;
  }

  if (action is SelectedRequests) {
    newState.selectedRequests = action.payload;
  }

  return newState;
}
