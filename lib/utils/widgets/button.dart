import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String btntext;
  final VoidCallback? onPressed;

  const DefaultButton({
    super.key,
    required this.btntext,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          elevation: 8,
          shadowColor: const Color(0x3D40BFFF),
        ),
        child: Text(
          btntext,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.backgroundColor,
          ),
        ),
      ),
    );
  }
}

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
            side: const BorderSide(
              color: AppColors.lightColor,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.symmetric(
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
              style: const TextStyle(
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

class TxtButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double width;

  const TxtButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          )
        ),
    );
  }
}
