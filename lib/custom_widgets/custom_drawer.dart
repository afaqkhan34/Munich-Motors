import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munich_motors/ui/views/about_us/about_us_view.dart';
import 'package:munich_motors/ui/views/brands_serve/brands_serve_view.dart';
import 'package:munich_motors/ui/views/contact_support/contact_support_view.dart';
import 'package:munich_motors/ui/views/login_screen/login_screen_view.dart';
import 'package:munich_motors/ui/views/our_partners/our_partners_view.dart';
import 'package:munich_motors/ui/views/special_offers/special_offers_view.dart';
import '../ui/common/app_colors.dart';
import '../ui/common/assets.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        children: [
          // Drawer header with profile image and name
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      AppImages.profile), // Update with your profile image path
                ),
                SizedBox(height: 8),
                Text(
                  'Garry Joseph', // Name text
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Drawer menu items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.aboutIcon, // Replace with your icon path
                  text: 'About Us',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUsView()),
                    );
                  },
                ),
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.brandsIcon,
                  text: 'Brand We Serve',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BrandsServeView()),
                    );
                  },
                ),
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.offersIcon,
                  text: 'Special Offers',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SpecialOffersView()),
                    );
                  },
                ),
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.partnerIcon,
                  text: 'Our Partners',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OurPartnersView()),
                    );
                  },
                ),
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.contactIcon,
                  text: 'Contact Support',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactSupportView()),
                    );
                  },
                ),
              ],
            ),
          ),
          // Settings and Logout buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.settingIcon,
                  text: 'Settings',
                  onTap: () {

                  },
                ),
                SizedBox(height: 10,),
                _buildDrawerItem(
                  isSvg: true,
                  icon: AppSVGs.logoutIcon,
                  text: 'Log Out',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreenView()),
                    );
                  },
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildDrawerItem(
      {required String icon, required String text, required VoidCallback onTap, required bool isSvg,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
          decoration: BoxDecoration(
            color: AppColors.lightTeal,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              children: [

          ListTile(
          leading: isSvg
          ? SvgPicture.asset(icon, width: 24, height: 24)
              : Image.asset(icon, width: 24, height: 24),
      title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
      tileColor: AppColors.lightTeal,

    ),
    Container(
    width: 215,
    height: 1,
    color: AppColors.teal.withOpacity(0.3),
    ),
    ],
    ),
    ),
    );
  }
}