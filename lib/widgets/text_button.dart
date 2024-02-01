import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, required this.textData, required this.color, required this.backgroundColor});

  final String textData;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: color),
      onPressed: () {},
      child: Text(
        textData,
        style: TextStyle(
            color: backgroundColor, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
