import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui/common/assets.dart'; // Import for AppSVGs

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNav({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSVGs.carIcon, height: 24), // Use AppSVGs
          label: 'My Car',
        ),
        BottomNavigationBarItem(
          icon:
              SvgPicture.asset(AppSVGs.recoveryIcon, height: 24), // Use AppSVGs
          label: 'Recovery',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSVGs.carIcon, height: 40), // Use AppSVGs
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon:
              SvgPicture.asset(AppSVGs.partnerIcon, height: 24), // Use AppSVGs
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSVGs.locationIcon,
              height:
                  24), // Use AppSVGs (make sure you have the location icon in AppSVGs)
          label: 'Location',
        ),
      ],
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    );
  }
}
