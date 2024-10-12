import 'package:ecommerce/screens/index.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 16,
          ),
          Text(
            'Let’s Get Started',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.darkColor),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
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
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputFields(
            placeholder: 'Full Name',
            maxLines: 1,
            icon: Icons.person_2_outlined
          ),
          SizedBox(
            height: 12,
          ),
          InputFields(
            placeholder: 'Your Email',
            maxLines: 1,
            icon: Icons.mail_outline
          ),
          SizedBox(
            height: 12,
          ),
          PasswordFields(
            placeholder: 'Password',
            icon: Icons.lock_outline,
          ),
          SizedBox(
            height: 12,
          ),
          PasswordFields(
            placeholder: 'Confirm Password',
            icon: Icons.lock_outline,
          ),
          SizedBox(
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
          SizedBox(height: 24,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have a account?',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
