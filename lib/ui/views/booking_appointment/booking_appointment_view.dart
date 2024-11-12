import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'booking_appointment_viewmodel.dart';

class BookingAppointmentView extends StackedView<BookingAppointmentViewModel> {
  const BookingAppointmentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BookingAppointmentViewModel viewModel,
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
  BookingAppointmentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BookingAppointmentViewModel();
}
