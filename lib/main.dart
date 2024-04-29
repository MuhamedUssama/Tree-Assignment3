import 'package:flutter/material.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BMI App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
