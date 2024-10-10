import 'package:ecommerce/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const Splashscreen()
    );
  }
}
