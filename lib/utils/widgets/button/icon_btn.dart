
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final String btntext;
  final String icon;
  final VoidCallback? onPressed;

  const ButtonIcon(
      {super.key, required this.btntext, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: AppColors.lightColor,
              width: 1,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 8),
            Text(
              btntext,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
