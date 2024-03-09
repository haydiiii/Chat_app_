import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class Text_form_field extends StatelessWidget {
  const Text_form_field({
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
            borderSide: const BorderSide(color: AppColor.primary),
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
