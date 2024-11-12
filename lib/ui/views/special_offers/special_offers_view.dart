import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'special_offers_viewmodel.dart';

class SpecialOffersView extends StackedView<SpecialOffersViewModel> {
  const SpecialOffersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SpecialOffersViewModel viewModel,
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
  SpecialOffersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpecialOffersViewModel();
}
