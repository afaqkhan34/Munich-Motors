import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:munich_motors/custom_widgets/custom_button.dart';
import 'package:munich_motors/custom_widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/assets.dart';
import '../../common/textstyles.dart';
import 'reset_password_viewmodel.dart';

class ResetPasswordView extends StackedView<ResetPasswordViewModel> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordViewModel viewModel,
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
            Text('Reset Password', style: TextStyles.largeBold),
            SizedBox(
              height: 10,
            ),
            Text('Please type something you’ll remember ',
                style: TextStyles.regular),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'New Password',
              startIconPath: AppSVGs.passwordIcon,
              obscureText: true,
              endIcon: Icons.remove_red_eye_sharp,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Confirm New Password',
              startIconPath: AppSVGs.passwordIcon,
              obscureText: true,
              endIcon: Icons.remove_red_eye_sharp,
            ),
            SizedBox(
              height: 28,
            ),
            CustomButton(
              label: 'Reset Password',
              onPressed: () {
                viewModel.navigateToPasswordChangedView();
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
  ResetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordViewModel();
}
