import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'start_page_viewmodel.dart';

class StartPageView extends StackedView<StartPageViewModel> {
  const StartPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
      ),
    );
  }

  @override
  StartPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartPageViewModel();
}
