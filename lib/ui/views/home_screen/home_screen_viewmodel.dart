import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreenViewModel extends BaseViewModel {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // Open the Drawer (Sidebar)
  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  // Handle notification bell click
  void onNotificationPressed() {
    // Logic to handle notification click
    print("Notification clicked");
  }
  //crousal view
  int _currentCarouselIndex = 0;
  int get currentCarouselIndex => _currentCarouselIndex;

  void updateCarouselIndex(int index) {
    _currentCarouselIndex = index;
    notifyListeners();
  }
}
