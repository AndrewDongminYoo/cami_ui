// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

VisualDensity get buttonDensity =>
    const VisualDensity(horizontal: -4, vertical: -4);

/// 사전에 사용자 정의된 버튼 스타일을 제공하는 클래스.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillBlackTL12 => ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.w),
        ),
      );
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillGray =>
      ElevatedButton.styleFrom(backgroundColor: appTheme.gray50);
  static ButtonStyle get fillGrayTL81 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillOnSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: lightTheme.onSecondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: lightTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: appTheme.yellow100,
        side: const BorderSide(width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.w),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL17 => OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        side: BorderSide(color: appTheme.blueGray70001),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.w),
        ),
      );
  static ButtonStyle get outlineBlueGrayTL171 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(color: appTheme.blueGray70001),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.w),
        ),
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        side: BorderSide(color: appTheme.gray500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

extension BaseButtonStyle on ButtonStyle {
  ButtonStyle get flat => copyWith(
        visualDensity: buttonDensity,
        splashFactory: NoSplash.splashFactory,
        elevation: MaterialStateProperty.all(0),
        enableFeedback: true,
      );
}
