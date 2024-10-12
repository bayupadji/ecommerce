import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/providers/textfields_provider.dart';

class InputFields extends StatelessWidget {
  final String placeholder;
  final int maxLines;
  final IconData icon;

  const InputFields({
    super.key,
    required this.placeholder,
    required this.maxLines,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TextFieldProvider>(
      builder: (context, provider, child) {
        return TextField(
          maxLines: maxLines,
          onChanged: (value) => provider.updateText(value),
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: TextStyle(
              color: AppColors.greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lightColor,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                icon,
                color: AppColors.greyColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
        );
      },
    );
  }
}
