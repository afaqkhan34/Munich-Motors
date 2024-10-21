import 'package:munich_motors/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:munich_motors/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:munich_motors/ui/views/home/home_view.dart';
import 'package:munich_motors/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:munich_motors/ui/views/start_page/start_page_view.dart';
import 'package:munich_motors/ui/views/login_screen/login_screen_view.dart';
import 'package:munich_motors/ui/views/signup_screen/signup_screen_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: StartPageView),
    MaterialRoute(page: LoginScreenView),
    MaterialRoute(page: SignupScreenView),
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
