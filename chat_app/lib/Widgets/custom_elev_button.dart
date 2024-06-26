import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustElevatedButton extends StatelessWidget {
  const CustElevatedButton({
    super.key,
    required this.onPressed,
    required this.name,
  });
  final Function() onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              foregroundColor: AppColor.white,
              backgroundColor: AppColor.primary),
          onPressed: onPressed,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
