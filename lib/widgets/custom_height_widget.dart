import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomHieghtWidget extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final int value;
  final VoidCallback plusFunction;
  final VoidCallback minusFunction;

  const CustomHieghtWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.title,
      required this.value,
      required this.plusFunction,
      required this.minusFunction});

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
            Text(
              title,
              style: const TextStyle(
                color: AppColors.mainColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "$value",
                  style: const TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 64,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: plusFunction,
                      splashColor: AppColors.mainColor,
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.mainColor,
                        size: 38,
                      ),
                    ),
                    IconButton(
                      onPressed: minusFunction,
                      splashColor: AppColors.mainColor,
                      icon: const Icon(
                        Icons.remove,
                        color: AppColors.mainColor,
                        size: 38,
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
