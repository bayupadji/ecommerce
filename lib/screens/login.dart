import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/widgets/button.dart';
import 'package:ecommerce/utils/widgets/inputfields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LogoTitle(),
            SizedBox(
              height: 24,
            ),
            FormLogin(),
          ],
        ),
      ),
    );
  }
}

class LogoTitle extends StatelessWidget {
  const LogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 78),
      child: Column(
        children: [
          Image.asset(
            'assets/icons/Icon_App/logo_blue.png',
            width: 73,
            height: 73,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Welcome to Flywi',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.darkColor),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Sign in to continue',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InputFields(
            placeholder: 'Your Email',
            maxLines: 1,
            icon: Icons.email_outlined,
          ),
          const SizedBox(
            height: 16,
          ),
          const InputFields(
            placeholder: 'Password',
            maxLines: 1,
            icon: Icons.lock_outline,
          ),
          const SizedBox(
            height: 16,
          ),
          DefaultButton(btntext: 'Login', onPressed: () {}),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  width: double.infinity,
                  color: AppColors.lightColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 2,
                  width: double.infinity,
                  color: AppColors.lightColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonIcon(
            btntext: 'Google',
            icon: 'assets/icons/Google.png',
            onPressed: () {
              print('object');
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ButtonIcon(
            btntext: 'Facebook',
            icon: 'assets/icons/Facebook.png',
            onPressed: () {
              print('object');
            },
          ),
          const SizedBox(
            height: 16,
          ),
          TxtButton(
            label: 'Forgot Password',
            onPressed: () {
              print('object');
            },
            width: double.infinity,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have a account?',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {
                  print('object');
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
