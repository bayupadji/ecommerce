import 'package:ecommerce/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/widgets/inputfields.dart';
import 'package:ecommerce/utils/widgets/button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleLogo(),
          SizedBox(
            height: 28,
          ),
          FormRegister(),
        ],
      ),
    );
  }
}

class TitleLogo extends StatelessWidget {
  const TitleLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            'Let’s Get Started',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.darkColor),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Create an new account',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
            ),
          ),
        ],
    );
  }
}

class FormRegister extends StatelessWidget {
  const FormRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InputFields(
            placeholder: 'Full Name',
            maxLines: 1,
            icon: Icons.person_2_outlined
          ),
          const SizedBox(
            height: 12,
          ),
          const InputFields(
            placeholder: 'Your Email',
            maxLines: 1,
            icon: Icons.mail_outline
          ),
          const SizedBox(
            height: 12,
          ),
          const PasswordFields(
            placeholder: 'Password',
            maxLines: 1,
            icon: Icons.lock_outline,
            isPassword: true
          ),
          const SizedBox(
            height: 12,
          ),
          const PasswordFields(
            placeholder: 'Confirm Password',
            maxLines: 1,
            icon: Icons.lock_outline,
            isPassword: true
          ),
          const SizedBox(
            height: 16,
          ),
          DefaultButton(
            btntext: 'Sign Up',
            onPressed: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context) => const LoginPage()
                )
              );
            }
          ),
          const SizedBox(height: 24,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have a account?',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
