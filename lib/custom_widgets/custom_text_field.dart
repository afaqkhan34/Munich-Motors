import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? startIconPath; // Path for the start icon
  final String? endIconPath; // Optional path for the end icon

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.startIconPath,
    this.endIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color.fromRGBO(232, 240, 239, 1), // Border color
          width: 1.8, // Border width
        ),
      ),
      child: Row(
        children: [
          // Start Icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset(
              startIconPath!, // Start icon path
              width: 24.0,
              height: 24.0,
            ),
          ),
          // Divider Line
          Container(
            width: 1,
            height: 24,
            color: Color.fromRGBO(232, 240, 239, 1), // Divider color
          ),
          // Expanded TextField
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none, // Remove default border
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12), // Adjust padding
              ),
            ),
          ),
          // End Icon (if provided)
          if (endIconPath != null) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                endIconPath!, // End icon path
                width: 24.0,
                height: 24.0,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
