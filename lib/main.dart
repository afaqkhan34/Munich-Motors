import 'package:flutter/material.dart';
import 'package:munich_motors/app/app.bottomsheets.dart';
import 'package:munich_motors/app/app.dialogs.dart';
import 'package:munich_motors/app/app.locator.dart';

import 'package:stacked_services/stacked_services.dart';

import 'app/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
