import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../custom_widgets/custom_button.dart';
import '../../common/app_colors.dart';
import '../../common/assets.dart';
import '../../common/textstyles.dart';
import 'password_changed_viewmodel.dart';

class PasswordChangedView extends StackedView<PasswordChangedViewModel> {
  const PasswordChangedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PasswordChangedViewModel viewModel,
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
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
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

            Text('Password Changed', style: TextStyles.largeBold),
            SizedBox(
              height: 10,
            ),
            Text('Your password has been changed succesfully ',
                style: TextStyles.regular),
            SizedBox(height: 30,),
            CustomButton(
              label: 'Sign In ',
              onPressed: () {
                viewModel.navigateToLoginScreenView();
              },
              borderWidth: 0,
              color: AppColors.lightTeal,
            ),
          ],

        ),
      ),
    );
  }

  @override
  PasswordChangedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PasswordChangedViewModel();
}
