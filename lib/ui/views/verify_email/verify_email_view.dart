import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:munich_motors/custom_widgets/custom_button.dart';
import 'package:munich_motors/ui/views/start_page/start_page_view.dart';
import 'package:stacked/stacked.dart';

import '../../../custom_widgets/custom_text_field.dart';
import '../../common/app_colors.dart';
import '../../common/assets.dart';
import '../../common/textstyles.dart';
import 'verify_email_viewmodel.dart';

class VerifyEmailView extends StackedView<VerifyEmailViewModel> {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyEmailViewModel viewModel,
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
            Text('Please check your email', style: TextStyles.largeBold),
            SizedBox(
              height: 5,
            ),
            Text('We’ve sent a code to ', style: TextStyles.regular),
            Text(
              'helloworld@gmail.com',
              style: TextStyles.smallLight.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTextField(
                  controller: viewModel.controller1,
                  focusNode: viewModel.focusNode1,
                  onChanged: (value) =>
                      viewModel.nextField(value, viewModel.focusNode2),
                ),
                _buildTextField(
                  controller: viewModel.controller2,
                  focusNode: viewModel.focusNode2,
                  onChanged: (value) =>
                      viewModel.nextField(value, viewModel.focusNode3),
                ),
                _buildTextField(
                  controller: viewModel.controller3,
                  focusNode: viewModel.focusNode3,
                  onChanged: (value) =>
                      viewModel.nextField(value, viewModel.focusNode4),
                ),
                _buildTextField(
                  controller: viewModel.controller4,
                  focusNode: viewModel.focusNode4,
                  onChanged: (value) => viewModel.completeInput(value),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              label: 'Verify',
              onPressed: () {
                viewModel.navigateToResetPasswordView();
              },
              borderWidth: 0,
              color: AppColors.lightTeal,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required Function(String) onChanged,
  }) {
    return SizedBox(
      width: 70,
      height: 59,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyles.largeBold,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: AppColors.lightGrey, // Border color when focused
              width: 1,
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }

  @override
  VerifyEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyEmailViewModel();
}
