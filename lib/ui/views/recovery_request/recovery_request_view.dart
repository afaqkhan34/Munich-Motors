import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'recovery_request_viewmodel.dart';

class RecoveryRequestView extends StackedView<RecoveryRequestViewModel> {
  const RecoveryRequestView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RecoveryRequestViewModel viewModel,
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
  RecoveryRequestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RecoveryRequestViewModel();
}
