import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munich_motors/ui/common/app_colors.dart';
import 'package:munich_motors/ui/common/assets.dart';
import 'package:stacked/stacked.dart';

import 'home_screen_viewmodel.dart';

class HomeScreenView extends StackedView<HomeScreenViewModel> {
  HomeScreenView({Key? key}) : super(key: key);

  final List<String> imagePaths = [
    AppImages.carim,
    AppImages.cari,
    AppImages.carPic,
  ];

  @override
  Widget builder(
    BuildContext context,
    HomeScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      key: viewModel.scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            AppImages.munichLogo,
            width: 31,
            height: 32,
          ), // Sidebar icon (hamburger)
          onPressed: () => viewModel.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), // Notification bell icon
            onPressed: viewModel.onNotificationPressed, // Handle notification
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle navigation or other actions
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle navigation or other actions
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(160, 0, 130, 25),
            child: Image.asset(
              AppImages.appLogo,
              width: 129,
              height: 38,
            ),
          ),
          CarouselSlider(
            items: imagePaths.map((path) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: 350.0, // Set the width here
                    height: 182.0, // Set the height here
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0), // Circular edges
                      image: DecorationImage(
                        image: AssetImage(path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 182.0, // Matching the height of the container
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                viewModel.updateCarouselIndex(index);
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagePaths.asMap().entries.map((entry) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 4.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: viewModel.currentCarouselIndex == entry.key
                      ? Colors.blueAccent
                      : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  HomeScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeScreenViewModel();
}
