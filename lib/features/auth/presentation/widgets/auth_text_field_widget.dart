import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/app_dimens.dart';
import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;

  const AuthTextFieldWidget({
    super.key,
    required this.labelText,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.tertiaryGray,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimens.micro),
          borderSide: const BorderSide(color: AppColors.monoBlack),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimens.micro),
          borderSide: BorderSide(color: AppColors.secondaryGray),
        ),
        labelStyle: TextStyle(color: AppColors.tertiaryGray),
        labelText: labelText,
      ),
    );
  }
}
