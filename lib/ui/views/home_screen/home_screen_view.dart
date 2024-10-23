import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_screen_viewmodel.dart';

class HomeScreenView extends StackedView<HomeScreenViewModel> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  HomeScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeScreenViewModel();
}
