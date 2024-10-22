import 'dart:ui';
import 'package:flutter/material.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Circular container with gradient in the background
                  Container(
                    width: 500, // Adjust width
                    height: 300, // Adjust height to make it circular
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Ensure the container is circular
                      gradient: RadialGradient(
                        center: const Alignment(0.0, -0.2), // Adjust the gradient center
                        radius: 1.5, // Increase radius for smooth fading
                        colors: [
                          AppColors.teal.withOpacity(0.20), // Teal color with transparency
                          Colors.transparent, // Fade to transparent
                        ],
                        stops: const [0.4, 0.7], // Smooth gradient transition
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0), // Blurring effect
                      child: Container(
                        color: Colors.transparent, // Keep it transparent to avoid visible background
                      ),
                    ),
                  ),

                  // Foreground image remains unchanged
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
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text('Sign In',style: TextStyles.largeBold),
                ),
              ],
            ),
            SizedBox(height: 25,),
            CustomTextField(hintText: 'Enter your email',startIconPath: AppSVGs.emailIcon,),
            SizedBox(height: 20,),
            CustomTextField(hintText: 'Password',startIconPath: AppSVGs.passwordIcon,endIcon: Icons.remove_red_eye_sharp,obscureText: true,)
          ],
        ),
      ),
    );
  }

  @override
  LoginScreenViewModel viewModelBuilder(
      BuildContext context,
      ) => LoginScreenViewModel();
}
