// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class BreadCrumb extends StatelessWidget {
  const BreadCrumb({
    super.key,
    required this.text,
    this.margin,
    this.onTap,
  });

  final String text;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
        ),
      ),
    );
  }
}
