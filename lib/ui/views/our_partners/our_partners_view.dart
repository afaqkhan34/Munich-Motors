import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'our_partners_viewmodel.dart';

class OurPartnersView extends StackedView<OurPartnersViewModel> {
  const OurPartnersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OurPartnersViewModel viewModel,
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
  OurPartnersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OurPartnersViewModel();
}
