import 'package:flutter/material.dart';
import 'package:munich_motors/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SignupScreenViewModel extends BaseViewModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final NavigationService _navigationService = locator<NavigationService>();
  navigateToHomeScreenView() {
    _navigationService.navigateToHomeScreenView();
  }

  navigateToLoginScreenView() {
    _navigationService.navigateToLoginScreenView();
  }
}
