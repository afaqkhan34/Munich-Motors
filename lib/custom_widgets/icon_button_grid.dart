import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui/common/assets.dart'; // Adjust the import path as needed

class IconButtonGrid extends StatelessWidget {
  final List<Function()> buttonActions;

  IconButtonGrid({required this.buttonActions});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          _buildIconButton(
              'Book an Appointment', AppSVGs.bookingIcon, buttonActions[0]),
          _buildIconButton(
              'Recovery Request', AppSVGs.recoveryIcon, buttonActions[1]),
          _buildIconButton(
              'Special Offers', AppSVGs.offersIcon, buttonActions[2]),
          _buildIconButton('Munich Motor', AppSVGs.carIcon, buttonActions[3]),
          _buildIconButton(
              'Corporate Offers', AppSVGs.corporateIcon, buttonActions[4]),
        ],
      ),
    );
  }

  Widget _buildIconButton(
      String label, String svgPath, Function() onTapAction) {
    return GestureDetector(
      onTap: onTapAction, // Execute the specific action for each button
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SvgPicture.asset(
              svgPath,
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
