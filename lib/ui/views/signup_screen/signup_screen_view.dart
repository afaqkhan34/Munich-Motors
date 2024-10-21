import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signup_screen_viewmodel.dart';

class SignupScreenView extends StackedView<SignupScreenViewModel> {
  const SignupScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupScreenViewModel viewModel,
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
  SignupScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupScreenViewModel();
}
