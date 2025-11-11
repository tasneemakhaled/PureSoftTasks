import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.prefixIcon,
    required this.text,
    this.textColor,
    this.onPressed,
    this.buttonColor,
  });

  final Icon? prefixIcon;
  final String text;
  final Color? textColor;
  final void Function()? onPressed;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // تحديد ارتفاع ثابت
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? pColor,
          foregroundColor: textColor ?? Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[prefixIcon!, SizedBox(width: 8)],
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14, // تصغير حجم الخط
                ),
                overflow: TextOverflow.ellipsis, // قص النص إذا كان طويلاً
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
