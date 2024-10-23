import 'package:flutter/material.dart';
import 'package:munich_motors/app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginScreenViewModel extends BaseViewModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final NavigationService _navigationService = locator<NavigationService>();

  navigateToSignupScreenView() {
    _navigationService.navigateToSignupScreenView();
  }

  navigateToHomeScreenView() {
    _navigationService.navigateToHomeScreenView();
  }

  navigateToForgotPasswordScreenView() {
    _navigationService.navigateToForgotPasswordView();
  }
}
