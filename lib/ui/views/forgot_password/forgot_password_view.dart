import 'dart:ui';

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
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 500, // Adjust width
                  height: 300, // Adjust height to make it circular
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // Ensure the container is circular
                    gradient: RadialGradient(
                      center: const Alignment(0.0, -0.2),
                      // Adjust the gradient center
                      radius: 1.5,
                      // Increase radius for smooth fading
                      colors: [
                        AppColors.teal.withOpacity(0.20),
                        // Teal color with transparency
                        Colors.transparent,
                        // Fade to transparent
                      ],
                      stops: const [0.4, 0.7], // Smooth gradient transition
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                    // Blurring effect
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
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
