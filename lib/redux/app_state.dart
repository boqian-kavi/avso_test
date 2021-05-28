import 'package:flutter/material.dart';

class AppState {
  int sideDrawerIndex;
  List selectedRequests;
  bool sideDrawerOpened;
  bool sideDrawerMobileOpened;
  Object userObj;

  AppState(
      {@required this.sideDrawerIndex,
      this.selectedRequests,
      this.sideDrawerOpened,
      this.sideDrawerMobileOpened,
      this.userObj});

  AppState.fromAppState(AppState another) {
    sideDrawerIndex = another.sideDrawerIndex;
    sideDrawerOpened = another.sideDrawerOpened;
    sideDrawerMobileOpened = another.sideDrawerMobileOpened;
    selectedRequests = another.selectedRequests;
    userObj = another.userObj;
  }
}
