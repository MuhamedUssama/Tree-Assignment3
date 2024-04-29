import 'package:flutter/material.dart';
import 'package:tree_assignment_3/utils/app_colors.dart';

import '../widgets/custom_app_widget.dart';
import '../widgets/custom_height_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 0;
  int wieght = 0;
  int heightForWidget = 80;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "BMi APP",
              style: TextStyle(
                color: AppColors.widgetColor,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFirstRowAppWidget(
                  height: height * 0.18,
                  width: width * 0.4,
                  title: "Age",
                  value: age,
                  plusFunction: agePlusFunction,
                  minusFunction: ageMinusFunction,
                ),
                CustomFirstRowAppWidget(
                  height: height * 0.18,
                  width: width * 0.4,
                  title: "Wieght (Kg)",
                  value: wieght,
                  plusFunction: wieghtPlusFunction,
                  minusFunction: wieghtMinusFunction,
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            CustomHieghtWidget(
              height: height * 0.18,
              width: width,
              title: "Hieght (cm)",
              value: heightForWidget,
              plusFunction: heightPlusFunction,
              minusFunction: heightMinusFunction,
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }

  void agePlusFunction() {
    setState(() {
      age++;
    });
  }

  void ageMinusFunction() {
    setState(() {
      if (age > 0) {
        age--;
      } else {
        return;
      }
    });
  }

  void wieghtPlusFunction() {
    setState(() {
      wieght++;
    });
  }

  void wieghtMinusFunction() {
    setState(() {
      if (wieght > 0) {
        wieght--;
      } else {
        return;
      }
    });
  }

  void heightPlusFunction() {
    setState(() {
      heightForWidget++;
    });
  }

  void heightMinusFunction() {
    setState(() {
      if (heightForWidget > 0) {
        heightForWidget--;
      } else {
        return;
      }
    });
  }
}
