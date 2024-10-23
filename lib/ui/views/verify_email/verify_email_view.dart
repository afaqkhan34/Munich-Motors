import 'package:flutter/material.dart';
import 'package:munich_motors/custom_widgets/custom_button.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 35),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 215,
    ),
    Text('Please check your email', style: TextStyles.largeBold),
    SizedBox(
    height: 10,
    ),
    Text(
    'We’ve sent a code to ',
    style: TextStyles.regular),
    Text('helloworld@gmail.com',style: TextStyles.smallLight.copyWith(color: AppColors.black, fontWeight: FontWeight.bold),),
    SizedBox(
    height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 70,
              height: 59,
              child: CustomTextField(
                hintText: '1', // Use hint text as per your need
              ),
            ),
            SizedBox(width: 14), // Space between text fields
            SizedBox(
              width: 70,
              height: 59,
              child: CustomTextField(
                hintText: '2', // Use hint text as per your need
              ),
            ),
            SizedBox(width: 14), // Space between text fields
            SizedBox(
              width: 70,
              height: 59,
              child: CustomTextField(
                hintText: '3', // Use hint text as per your need
              ),
            ),
            SizedBox(width: 14), // Space between text fields
            SizedBox(
              width: 70,
              height: 59,
              child: CustomTextField(
                hintText: '4', // Use hint text as per your need
              ),
            ),
          ],
        ),
      SizedBox(height: 20,),
      CustomButton(label: 'Verify', onPressed: (){}, borderWidth: 0,color: AppColors.lightTeal,)
      



  ],
      ),
    ),
    );
  }

  @override
  VerifyEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyEmailViewModel();
}
