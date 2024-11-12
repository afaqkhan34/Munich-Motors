import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'brands_serve_viewmodel.dart';

class BrandsServeView extends StackedView<BrandsServeViewModel> {
  const BrandsServeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BrandsServeViewModel viewModel,
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
  BrandsServeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BrandsServeViewModel();
}
