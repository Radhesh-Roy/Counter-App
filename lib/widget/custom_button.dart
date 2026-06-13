import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final Color textColor, backgroundColor;
  const CustomButton({
    super.key, required this.title, this.onPressed, required this.textColor, required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(textColor),
          elevation: WidgetStatePropertyAll(0),
          backgroundColor: WidgetStatePropertyAll(backgroundColor.withOpacity(0.3))
      ),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}