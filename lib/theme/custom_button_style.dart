// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

VisualDensity get buttonDensity =>
    const VisualDensity(horizontal: -4, vertical: -4);

/// 사전에 사용자 정의된 버튼 스타일을 제공하는 클래스.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillBlackTL12 => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.w),
        ),
      );
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE6F0FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF9CA3AF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillGray =>
      ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFAFAFA));
  static ButtonStyle get fillGrayTL81 => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillOnSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF262626),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFF50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFFFEFFBF),
        side: const BorderSide(width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.w),
        ),
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFFFAFAFA),
        side: const BorderSide(color: Color(0xFFA3A3A3)),
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
