import 'package:flutter/material.dart';
import 'package:munich_motors/custom_widgets/custom_button.dart';
import 'package:munich_motors/custom_widgets/custom_text_field.dart';
import 'package:munich_motors/ui/common/textstyles.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/assets.dart';
import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StackedView<ForgotPasswordViewModel> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgotPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: AppColors.white.withOpacity(0.10),
          elevation: 0, // Flat AppBar
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 40, // Set height for your logo
              child: Image.asset(
                AppImages.appLogo, // Path to your logo
                fit: BoxFit.contain, // Maintain aspect ratio
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 215,
            ),
            Text('Forgot Password?', style: TextStyles.largeBold),
            SizedBox(
              height: 10,
            ),
            Text(
                'Don’t worry! It happens. Please enter the email associated with your account.',
                style: TextStyles.regular),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hintText: 'Email Address',
              startIconPath: AppSVGs.emailIcon,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              label: 'Send Code',
              onPressed: () {
                viewModel.navigateToVerifyEmailView();
              },
              borderWidth: 0,
              color: AppColors.lightTeal,
            )
          ],
        ),
      ),
    );
  }

  @override
  ForgotPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgotPasswordViewModel();
}
