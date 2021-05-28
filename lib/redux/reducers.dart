import 'package:avso_test/redux/app_state.dart';

import 'actions.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is DrawerIndex) {
    newState.sideDrawerIndex = action.payload;
  }

  if (action is DrawerOpened) {
    newState.sideDrawerOpened = action.payload;
  }

  if (action is DrawerMobileOpened) {
    newState.sideDrawerMobileOpened = action.payload;
  }

  if (action is SelectedRequests) {
    newState.selectedRequests = action.payload;
  }

  if (action is UpdateUser) {
    newState.userObj = action.payload;
  }

  return newState;
}
