import 'package:flutter/material.dart';

class AppState {
  int sideDrawerIndex;
  List selectedRequests;

  AppState({@required this.sideDrawerIndex, this.selectedRequests});

  AppState.fromAppState(AppState another) {
    sideDrawerIndex = another.sideDrawerIndex;
    selectedRequests = another.selectedRequests;
  }
}
