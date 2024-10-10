// ignore_for_file: library_private_types_in_public_api
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class InputFields extends StatefulWidget {
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
  _InputFieldsState createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {

  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: widget.maxLines,
          onTap: () {
            setState(() {
              _isFocused = true;
            });
          },
          onEditingComplete: () {
            setState(() {
              _isFocused = false;
            });
          },
          decoration: InputDecoration(
            hintText: widget.placeholder,
            hintStyle: const TextStyle(
              color: AppColors.greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lightColor,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                widget.icon,
                color: _isFocused
                    ? AppColors.primaryColor
                    : AppColors.greyColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color:
                    _isFocused ? AppColors.primaryColor : AppColors.lightColor,
                width: 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
