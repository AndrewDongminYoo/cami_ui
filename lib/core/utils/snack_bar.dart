// 🐦 Flutter imports:
import 'package:flutter/material.dart';

extension SnackBarExt on BuildContext {
  void showSnackBar({
    required Widget content,
    Color? backgroundColor = Colors.transparent,
    double? elevation = 0,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    HitTestBehavior? hitTestBehavior,
    SnackBarBehavior? behavior = SnackBarBehavior.floating,
    SnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = const Duration(milliseconds: 3000),
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection dismissDirection = DismissDirection.down,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        elevation: elevation,
        behavior: behavior,
        backgroundColor: backgroundColor,
        content: content,
        margin: margin,
        padding: padding,
        width: width,
        shape: shape,
        hitTestBehavior: hitTestBehavior,
        action: action,
        actionOverflowThreshold: actionOverflowThreshold,
        showCloseIcon: showCloseIcon,
        closeIconColor: closeIconColor,
        duration: duration,
        animation: animation,
        onVisible: onVisible,
        dismissDirection: dismissDirection,
        clipBehavior: clipBehavior,
      ),
    );
  }
}
