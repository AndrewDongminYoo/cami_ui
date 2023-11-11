// 🎯 Dart imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

/// 사전에 사용자 정의된 버튼 스타일을 제공하는 클래스.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );
  static ButtonStyle get fillBlackTL12 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.w)),
      );
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray300,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );
  static ButtonStyle get fillGray =>
      ElevatedButton.styleFrom(backgroundColor: appTheme.gray50);
  static ButtonStyle get fillGrayTL81 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );
  static ButtonStyle get fillOnSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onSecondaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: appTheme.yellow100,
        side: BorderSide(
          color: appTheme.black900,
          width: 2,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.w)),
      );
  static ButtonStyle get outlineBlueGrayTL17 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.black900,
        side: BorderSide(color: appTheme.blueGray70001),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.w)),
      );
  static ButtonStyle get outlineBlueGrayTL171 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(color: appTheme.blueGray70001),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.w)),
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        side: BorderSide(color: appTheme.gray500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.w)),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
