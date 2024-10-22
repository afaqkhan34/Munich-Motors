import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:munich_motors/ui/common/app_colors.dart';
import 'package:munich_motors/ui/common/assets.dart';
import 'package:stacked/stacked.dart';
import '../../../custom_widgets/custom_button.dart';
import 'start_page_viewmodel.dart';

class StartPageView extends StackedView<StartPageViewModel> {
  const StartPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Faded blurred background shade that expands from behind the image
                Container(
                  width: 500, // Width that allows the shade to extend outwards
                  height: 300, // Height to create a noticeable shade
                  decoration: BoxDecoration(
                    // No color, just use a gradient to simulate the shade
                    gradient: RadialGradient(
                      colors: [
                        AppColors.teal.withOpacity(0.60),
                        // Light blue shade with 20% opacity
                        Colors.transparent,
                        // Fade to transparent
                      ],
                      stops: [
                        11.0,
                        7.0
                      ], // Starts with color and fades to transparent
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                    // High blur effect
                    child: Container(
                      color: Colors
                          .transparent, // Keep it transparent to show only the blur effect
                    ),
                  ),
                ),

                // Foreground image
                Container(
                  width: 297.w, // Image size
                  height: 128.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          AppImages.carImage,
                      ),
                      // Your image path
                      fit: BoxFit.contain, // Keeps the original aspect ratio
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 82.61),
            CustomButton(
              label: 'Sign In',
              onPressed: () {
                viewModel.navigateToLoginScreenView();
              },
              color: AppColors.lightTeal,
              borderWidth: 0,
            ),
            SizedBox(height: 20),
            CustomButton(
              label: 'Create Account',
              onPressed: () {
                viewModel.navigateToSignupScreenView();
              },
              color: AppColors.white,
              borderWidth: 1.8,
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartPageViewModel viewModelBuilder(BuildContext context) =>
      StartPageViewModel();
}
