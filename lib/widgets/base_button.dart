// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:

abstract class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.textStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final bool? isDisabled;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
