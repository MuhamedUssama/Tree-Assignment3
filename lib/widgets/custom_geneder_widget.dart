import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomGenederWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool isClickedMale;
  final bool isClickedFemale;
  final VoidCallback uperIconFunction;
  final VoidCallback lowerIconFunction;

  const CustomGenederWidget({
    super.key,
    required this.height,
    required this.width,
    required this.isClickedMale,
    required this.isClickedFemale,
    required this.uperIconFunction,
    required this.lowerIconFunction,
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
              "Gender",
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "I'm a",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 64,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: uperIconFunction,
                      splashColor: AppColors.mainColor,
                      icon: Icon(
                        Icons.male,
                        color: isClickedMale
                            ? Colors.blueAccent
                            : AppColors.mainColor,
                        size: 48,
                      ),
                    ),
                    IconButton(
                      onPressed: lowerIconFunction,
                      splashColor: AppColors.mainColor,
                      icon: Icon(
                        Icons.female,
                        color:
                            isClickedFemale ? Colors.pink : AppColors.mainColor,
                        size: 48,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
