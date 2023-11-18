// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue =>
      const BoxDecoration(color: Color(0xFF1D59C4));
  static BoxDecoration get fillBlue50 =>
      const BoxDecoration(color: Color(0xFFE6F0FF));
  static BoxDecoration get fillGray =>
      const BoxDecoration(color: Color(0xFFF5F5F5));
  static BoxDecoration get fillGray100 =>
      const BoxDecoration(color: Color(0xFFF3F4F6));
  static BoxDecoration get fillGray50 =>
      const BoxDecoration(color: Color(0xFFFAFAFA));
  static BoxDecoration get fillOnErrorContainer =>
      const BoxDecoration(color: Color(0xFF171717));
  static BoxDecoration get fillOnPrimaryContainer =>
      const BoxDecoration(color: Color(0xFFFFFFFF));
  static BoxDecoration get fillPrimary =>
      const BoxDecoration(color: Color(0xFFFFFF50));
  static BoxDecoration get fillSecondaryContainer =>
      const BoxDecoration(color: Color(0xFFD9D9D9));

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: const Color(0x6BCCCCCC),
            spreadRadius: 2.w,
            blurRadius: 2.w,
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE5E7EB),
          width: 1.w,
        ),
      );
  static BoxDecoration get outlineGrayC => BoxDecoration(
        color: const Color(0xFFFAFAFA),
        boxShadow: [
          BoxShadow(
            color: const Color(0x4C939393),
            spreadRadius: 2.w,
            blurRadius: 2.w,
          ),
        ],
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE5E5E5),
          width: 1.w,
        ),
      );
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        border: Border.all(
          color: const Color(0xFF262626),
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

  static BorderRadius get roundTop20 =>
      BorderRadius.vertical(top: Radius.circular(20.w));
  static BorderRadius get roundBottom20 =>
      BorderRadius.vertical(bottom: Radius.circular(20.w));
}

double get strokeAlignInside => BorderSide.strokeAlignInside;
double get strokeAlignCenter => BorderSide.strokeAlignCenter;
double get strokeAlignOutside => BorderSide.strokeAlignOutside;
