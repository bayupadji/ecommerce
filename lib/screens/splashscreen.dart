import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/screens/login.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override

  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context, MaterialPageRoute(builder: (context) => const LoginPage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/Icon_App/logo_white.png',
              width: 72,
              height: 72,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}