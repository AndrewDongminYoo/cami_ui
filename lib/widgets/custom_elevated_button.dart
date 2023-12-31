// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/custom_button_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/base_button.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.textAlign,
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
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      height: height ?? 40.h,
      width: width ?? double.maxFinite,
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle ?? CustomButtonStyles.fillPrimary,
        onPressed: isDisabled ?? false ? null : () => onPressed(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leftIcon ?? const SizedBox.shrink(),
            Text(
              text,
              style: textStyle ?? textTheme.labelLarge,
              textAlign: textAlign ?? TextAlign.center,
            ),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
