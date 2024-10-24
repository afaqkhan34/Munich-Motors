import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:munich_motors/ui/common/app_colors.dart';
import 'package:munich_motors/ui/common/ui_helpers.dart';


import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
