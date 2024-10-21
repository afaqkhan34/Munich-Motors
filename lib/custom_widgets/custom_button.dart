import 'package:flutter/material.dart';
import 'package:munich_motors/ui/common/app_colors.dart';

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String label; // Text to display on the button
  final VoidCallback onPressed; // Callback function when button is pressed
  final Color? color; // User-defined background color
  final Color? textColor; // Text color
  final double width; // Button width
  final double height;
  final double borderWidth; // Required border width

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color, // User-defined background color
    this.textColor,
    this.width = 320, // Full width by default
    this.height = 51,
    required this.borderWidth, // Required border width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.white, // Default to white if no color provided
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: borderWidth, // Use the provided border width
              color: AppColors.lightGrey, // Border color set to #E8F0EF
            ),
            borderRadius: BorderRadius.circular(15), // Rounded corners
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: textColor ?? AppColors.black, // Default text color
          ),
        ),
      ),
    );
  }
}
