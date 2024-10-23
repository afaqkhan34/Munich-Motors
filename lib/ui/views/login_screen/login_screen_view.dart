import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:munich_motors/custom_widgets/custom_button.dart';
import 'package:munich_motors/custom_widgets/custom_text_field.dart';
import 'package:munich_motors/ui/common/textstyles.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/assets.dart';
import 'login_screen_viewmodel.dart';

class LoginScreenView extends StackedView<LoginScreenViewModel> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginScreenViewModel viewModel,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Stack(
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
                  Container(
                    width: 297, // Adjust size as needed
                    height: 128,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.carImage,
                        ),
                        fit: BoxFit.contain, // Maintain original aspect ratio
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Sign In', style: TextStyles.largeBold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Enter your email',
              startIconPath: AppSVGs.emailIcon,
              controller: viewModel.emailController,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Password',
              startIconPath: AppSVGs.passwordIcon,
              endIcon: Icons.remove_red_eye_sharp,
              controller: viewModel.passwordController,
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    viewModel
                        .navigateToForgotPasswordScreenView(); // Handle Forgot Password logic
                  },
                  child: Text(
                    'Forgot Password?',
                    style:
                        TextStyles.smallLight.copyWith(color: AppColors.teal),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              label: 'Sign In ',
              onPressed: () {
                viewModel.navigateToHomeScreenView();
              },
              borderWidth: 0,
              color: AppColors.lightTeal,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the row
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyles.smallLight, // Use your predefined TextStyle
                ),

                // "Sign up" text with a different color and action
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToSignupScreenView();
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyles.smallLight.copyWith(
                      color: AppColors
                          .teal, // Override the color to blue for Sign up
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginScreenViewModel();
}
