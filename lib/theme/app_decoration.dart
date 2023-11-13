// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(color: appTheme.blue800);
  static BoxDecoration get fillBlue50 => BoxDecoration(color: appTheme.blue50);
  static BoxDecoration get fillGray => BoxDecoration(color: appTheme.gray10001);
  static BoxDecoration get fillGray100 =>
      BoxDecoration(color: appTheme.gray100);
  static BoxDecoration get fillGray50 => BoxDecoration(color: appTheme.gray50);
  static BoxDecoration get fillOnErrorContainer =>
      BoxDecoration(color: theme.colorScheme.onErrorContainer);
  static BoxDecoration get fillOnPrimaryContainer =>
      BoxDecoration(color: theme.colorScheme.onPrimaryContainer);
  static BoxDecoration get fillPrimary =>
      BoxDecoration(color: theme.colorScheme.primary);
  static BoxDecoration get fillSecondaryContainer =>
      BoxDecoration(color: theme.colorScheme.secondaryContainer);

  // Outline decorations
  static BoxDecoration get outlineBlueGrayB => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray1006b,
            spreadRadius: 2.w,
            blurRadius: 2.w,
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.w,
        ),
      );
  static BoxDecoration get outlineGrayC => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5004c,
            spreadRadius: 2.w,
            blurRadius: 2.w,
          ),
        ],
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onError,
          width: 1.w,
        ),
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onSecondaryContainer,
          width: 1.w,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder2 => BorderRadius.circular(2.w);
  static BorderRadius get circleBorder8 => BorderRadius.circular(8.w);
  static BorderRadius get circleBorder12 => BorderRadius.circular(12.w);
  static BorderRadius get circleBorder16 => BorderRadius.circular(16.w);
  static BorderRadius get circleBorder20 => BorderRadius.circular(20.w);
  static BorderRadius get circleBorder24 => BorderRadius.circular(24.w);
  static BorderRadius get circleBorder42 => BorderRadius.circular(42.w);
  static BorderRadius get circleBorder50 => BorderRadius.circular(50.w);
  static BorderRadius get circleBorder61 => BorderRadius.circular(61.w);
}

double get strokeAlignInside => BorderSide.strokeAlignInside;
double get strokeAlignCenter => BorderSide.strokeAlignCenter;
double get strokeAlignOutside => BorderSide.strokeAlignOutside;
