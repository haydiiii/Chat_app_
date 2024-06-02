import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTxtFormField extends StatelessWidget {
  const CustomTxtFormField({
    super.key,
    required this.label,
    required this.prefix,
    required this.suffix,
    this.obsecuretext,
  });
  final String label;
  final IconData prefix;
  final Widget? suffix;
  final bool? obsecuretext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecuretext ?? false,
      decoration: InputDecoration(
        prefixIcon: Icon(prefix),
        suffixIcon: suffix ?? const SizedBox(),
        labelText: label,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primary),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
