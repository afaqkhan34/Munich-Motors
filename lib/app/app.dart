import 'package:munich_motors/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:munich_motors/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:munich_motors/ui/views/home/home_view.dart';
import 'package:munich_motors/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:munich_motors/ui/views/start_page/start_page_view.dart';
import 'package:munich_motors/ui/views/login_screen/login_screen_view.dart';
import 'package:munich_motors/ui/views/signup_screen/signup_screen_view.dart';

import 'package:munich_motors/ui/views/home_screen/home_screen_view.dart';
import 'package:munich_motors/ui/views/forgot_password/forgot_password_view.dart';
import 'package:munich_motors/ui/views/verify_email/verify_email_view.dart';
import 'package:munich_motors/ui/views/reset_password/reset_password_view.dart';
import 'package:munich_motors/ui/views/password_changed/password_changed_view.dart';
import 'package:munich_motors/ui/views/home_screen/home_screen_view.dart';

import 'package:munich_motors/ui/views/booking_appointment/booking_appointment_view.dart';
import 'package:munich_motors/ui/views/recovery_request/recovery_request_view.dart';
import 'package:munich_motors/ui/views/special_offers/special_offers_view.dart';
import 'package:munich_motors/ui/views/contact_support/contact_support_view.dart';
import 'package:munich_motors/ui/views/brands_serve/brands_serve_view.dart';
import 'package:munich_motors/ui/views/our_partners/our_partners_view.dart';
import 'package:munich_motors/ui/views/about_us/about_us_view.dart';
import 'package:munich_motors/ui/views/contact_support/contact_support_view.dart';
import 'package:munich_motors/ui/views/location/location_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: StartPageView),
    MaterialRoute(page: LoginScreenView),
    MaterialRoute(page: SignupScreenView),

    MaterialRoute(page: HomeScreenView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: VerifyEmailView),
    MaterialRoute(page: ResetPasswordView),
    MaterialRoute(page: PasswordChangedView),
    MaterialRoute(page: HomeScreenView),

    MaterialRoute(page: BookingAppointmentView),
    MaterialRoute(page: RecoveryRequestView),
    MaterialRoute(page: SpecialOffersView),
    MaterialRoute(page: ContactSupportView),
    MaterialRoute(page: BrandsServeView),
    MaterialRoute(page: OurPartnersView),
    MaterialRoute(page: AboutUsView),
    MaterialRoute(page: ContactSupportView),
    MaterialRoute(page: LocationView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
