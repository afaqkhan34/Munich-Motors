import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munich_motors/ui/common/textstyles.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/assets.dart';
import 'special_offers_viewmodel.dart';

class SpecialOffersView extends StackedView<SpecialOffersViewModel> {
  const SpecialOffersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SpecialOffersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppSVGs.offersIcon,width: 18,height: 19,),
                  SizedBox(width: 5,),
                  Text('Special Offers',style: TextStyles.regular.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
            ),
            Container(
              width: 360,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
              AppImages.offer,
              width: 360,
              height: 160,
            )),
            SizedBox(height: 15,),
            Container(
                width: 360,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  AppImages.offer,
                  width: 360,
                  height: 160,
                )),
          ],
        ));
  }

  @override
  SpecialOffersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpecialOffersViewModel();
}
