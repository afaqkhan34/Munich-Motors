import 'package:flutter/cupertino.dart';

import 'package:munich_motors/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class VerifyEmailViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToResetPasswordView() {
    _navigationService.navigateToResetPasswordView();
  }

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode nextFocusNode) {
    if (value.length == 1) {
      nextFocusNode.requestFocus();
      notifyListeners();
    }
  }

  void completeInput(String value) {
    if (value.length == 1) {
      focusNode4.unfocus();
      // Handle verification logic
      notifyListeners();
    }
  }
}
