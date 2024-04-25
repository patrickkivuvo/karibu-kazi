import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final bool obscureText;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          hintText: label,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: TColor.placeholder,
                )
              : null,
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: TColor.placeholder,
                )
              : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
