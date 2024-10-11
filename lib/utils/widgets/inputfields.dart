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
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: _focusNode,
          maxLines: widget.maxLines,
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
                color: _focusNode.hasFocus
                    ? AppColors.primaryColor
                    : AppColors.greyColor,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PasswordFields extends StatefulWidget {
  final String placeholder;
  final int maxLines;
  final IconData icon;
  final bool isPassword;

  const PasswordFields({
    super.key,
    required this.placeholder,
    required this.maxLines,
    required this.icon,
    required this.isPassword,
  });

  @override
  State<PasswordFields> createState() => _PasswordFieldsState();
}

class _PasswordFieldsState extends State<PasswordFields> {
  late FocusNode _focusNode;
  bool _obscureText = true;

    @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: _focusNode,
          obscureText: widget.isPassword
              ? _obscureText
              : false, 
          maxLines: widget.isPassword
              ? 1
              : widget.maxLines,
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
                color: _focusNode.hasFocus
                    ? AppColors.primaryColor
                    : AppColors.greyColor,
              ),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.greyColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText =
                            !_obscureText;
                      });
                    },
                  )
                : null,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
