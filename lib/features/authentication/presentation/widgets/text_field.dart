import 'package:flutter/material.dart';
import 'package:gocart/core/theme/colors.dart';
import 'package:gocart/core/theme/typography.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      style: TextStyles.labelText,
      cursorColor: AppColors.mediumGray,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.charcoalBlack,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.darkGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.mediumGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.darkGray),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyles.hintText,
      ),
    );
  }
}
