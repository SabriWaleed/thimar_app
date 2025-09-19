import 'package:flutter/material.dart';

class TextbuttonWidget extends StatelessWidget {
  const TextbuttonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.fontWeight,
    required this.color
  });
  final VoidCallback onPressed;
  final String title;
  final FontWeight fontWeight;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
