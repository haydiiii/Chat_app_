import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTxtFormField extends StatelessWidget {
  const CustomTxtFormField({
    super.key,
    required this.label,
    this.controller,
    required this.prefix,
    this.suffix,
    this.obscureText = false,
    this.validator, required bool obsecuretext,
  });

  final String label;
  final IconData prefix;
  final Widget? suffix;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator, // يتم استدعاء الدالة هنا
      decoration: InputDecoration(
        prefixIcon: Icon(prefix),
        suffixIcon: suffix ?? const SizedBox(),
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primary),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
