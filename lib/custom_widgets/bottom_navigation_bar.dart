import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munich_motors/ui/common/assets.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ClipRRect(

        borderRadius: BorderRadius.horizontal(left: Radius.circular(100), right: Radius.circular(100)),
        child: BottomAppBar(
          elevation: 20,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side: Support and Location
              Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(AppSVGs.supportIcon),
                    onPressed: () => onTap(0), // Support
                  ),
                  IconButton(
                    icon: SvgPicture.asset(AppSVGs.locationIcon),
                    onPressed: () => onTap(1), // Location
                  ),
                ],
              ),
              // Center: Home with a Circular Teal Background
              Container(
                padding: EdgeInsets.all(3), // Add some padding to the circle
                decoration: BoxDecoration(

                  color: Colors.teal.withOpacity(0.20), // Teal background color
                  shape: BoxShape.circle, // Make the background circular
                ),
                child: IconButton(
                  icon:Image.asset(AppImages.munichLogo),
                  onPressed: () => onTap(2), // Home (centered)
                ),
              ),
              // Right side: Recovery and My Cars
              Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(AppSVGs.recoveryIcon),
                    onPressed: () => onTap(3), // Recovery
                  ),
                  IconButton(
                    icon: SvgPicture.asset(AppSVGs.carIcon),
                    onPressed: () => onTap(4), // My Cars
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
