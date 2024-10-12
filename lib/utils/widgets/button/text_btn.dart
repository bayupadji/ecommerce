import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class TxtButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double width;

  const TxtButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          )
        ),
    );
  }
}
