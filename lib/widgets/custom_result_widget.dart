import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomResultWidget extends StatelessWidget {
  final double height;
  final double width;
  final double resultValue;
  final String bimCategory;

  const CustomResultWidget({
    super.key,
    required this.height,
    required this.width,
    required this.resultValue,
    required this.bimCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.widgetColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Your Result Is: ",
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "$resultValue",
              style: const TextStyle(
                color: AppColors.mainColor,
                fontSize: 64,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              bimCategory,
              style: const TextStyle(
                color: AppColors.mainColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
