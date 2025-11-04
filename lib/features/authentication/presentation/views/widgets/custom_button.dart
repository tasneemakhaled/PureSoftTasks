import 'package:flutter/material.dart';
import 'package:fruit_app/features/authentication/presentation/views/sign_up_view.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.prefixIcon,
    required this.text,
    this.color,
    this.onPressed,
    this.buttonColor,
  });
  final Icon? prefixIcon;
  final String text;
  final Color? color;
  final void Function()? onPressed;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ?prefixIcon,
          SizedBox(width: 10),
          Text(text, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
