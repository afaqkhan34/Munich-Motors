import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munich_motors/ui/common/app_colors.dart'; // Import for SVG support

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? startIconPath; // Path for the start icon (optional)
  final IconData? endIcon; // Built-in Flutter icon for the end icon (optional)
  final bool obscureText; // Optional parameter to hide text (for passwords)

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.startIconPath,
    this.endIcon, // Use IconData for the end icon
    this.obscureText = false, // Default is false (not obscured)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.grey, // Border color
          width: 1.8, // Border width
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Make the Row only take the required space
        children: [
          // Start Icon (optional)
          if (startIconPath != null) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(
                startIconPath!, // Start icon path
                width: 24.0,
                height: 24.0,
                color: AppColors.darkGrey, // Set the color of the start icon
              ),
            ),
          ],
          // Divider Line (always shown)
          Container(
            width: 1, // Width of the divider
            height: 24, // Height of the divider
            color: AppColors.grey, // Divider color
            margin: const EdgeInsets.symmetric(horizontal: 8.0), // Spacing around the divider
          ),
          // Expanded TextField with hint text
          Expanded(
            child: TextField(
              obscureText: obscureText, // Use the obscureText property
              decoration: InputDecoration(
                hintText: hintText,// Hint text
                border: InputBorder.none, // Remove default border
                contentPadding: EdgeInsets.symmetric(vertical: 12), // Adjust padding
                suffixIcon: endIcon != null // Use built-in Flutter icon as the end icon
                    ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    endIcon,
                    color: AppColors.darkGrey, // Color of the end icon
                  ),
                )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
