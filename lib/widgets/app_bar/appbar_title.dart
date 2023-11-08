// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
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
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray500),
        ),
      ),
    );
  }
}
