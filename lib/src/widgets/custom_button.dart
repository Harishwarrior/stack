import 'package:cred/src/utils/styles/styles.dart';
import 'package:flutter/material.dart';

/// custom button for stack layout
class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const CustomButton({
    required this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: Styles.buttonBorderRadius,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Styles.buttonTextColor,
          ),
        ),
      ),
    );
  }
}
