import 'package:flutter/material.dart';
import 'package:munich_motors/ui/views/contact_support/contact_support_view.dart';
import 'package:munich_motors/ui/views/home_screen/home_screen_view.dart';
import 'package:munich_motors/ui/views/location/location_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../booking_appointment/booking_appointment_view.dart';
import '../recovery_request/recovery_request_view.dart';
import '../special_offers/special_offers_view.dart';

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

  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToBookingAppointmentView() {
    _navigationService.navigateToView(BookingAppointmentView());
  }

  void navigateToRecoveryRequestView() {
    _navigationService.navigateToView(RecoveryRequestView());
  }

  void navigateToSpecialOffersView() {
    _navigationService.navigateToView(SpecialOffersView());
  }

  void onNavBarTapped(int index) {
    switch (index) {
      case 0:
        _navigationService.navigateToView(ContactSupportView());
        break;
      case 1:
        _navigationService.navigateToView(LocationView());
        break;
      case 2:
        _navigationService.navigateToView(HomeScreenView());
        break;
      case 3:
        _navigationService.navigateToView(RecoveryRequestView());
        break;

      default:
        break;
    }
  }
}
