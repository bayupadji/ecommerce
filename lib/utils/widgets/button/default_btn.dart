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
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          elevation: 8,
          shadowColor: const Color(0x3D40BFFF),
        ),
        child: Text(
          btntext,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.backgroundColor,
          ),
        ),
      ),
    );
  }
}