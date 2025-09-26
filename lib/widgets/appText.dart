import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextAlign align;
  final Color? color;
  final double size;
  final FontWeight weight;

  const AppText(
    this.text, {
    super.key,
    this.align = TextAlign.start,
    this.color,
    this.size = 16,
    this.weight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color ?? Theme.of(context).textTheme.bodyLarge?.color,
      ),
    );
  }
}
