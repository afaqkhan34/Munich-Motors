import 'package:munich_motors/app/app_router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class PasswordChangedViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToLoginScreenView() {
    _navigationService.navigateToLoginScreenView();
  }
}
