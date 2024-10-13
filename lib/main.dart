import 'package:ecommerce/providers/promo_provider.dart';
import 'package:ecommerce/providers/navbar_provider.dart';
import 'package:ecommerce/providers/textfields_provider.dart';
import 'package:ecommerce/providers/timer_provider.dart';
import 'package:ecommerce/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TimerProvider()),
        ChangeNotifierProvider(create: (_) => TextFieldProvider()),
        ChangeNotifierProvider(create: (_) => PromoSectionProvider()),
        ChangeNotifierProvider(create: (_) => NavbarProvider()),
      ],
      child: MainApp(),
    ),
  );
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
      home: Splashscreen()
    );
  }
}
