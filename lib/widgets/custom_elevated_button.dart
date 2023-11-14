// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';
import '/widgets/base_button.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required VoidNavFunction onPressed,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          textStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildElevatedButtonWidget(context),
          )
        : _buildElevatedButtonWidget(context);
  }

  Widget _buildElevatedButtonWidget(BuildContext context) {
    return Container(
      height: height ?? 40.h,
      width: width ?? double.maxFinite,
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: isDisabled ?? false ? null : () => onPressed(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leftIcon ?? const SizedBox.shrink(),
            Text(
              text,
              style: textStyle ??
                  textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
