import 'package:munich_motors/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  navigateToVerifyEmailView() {
    _navigationService.navigateToVerifyEmailView();
  }
}
