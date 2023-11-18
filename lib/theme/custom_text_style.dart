// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';

extension TextStyleX on TextStyle {
  /// Font Weight
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get thick => copyWith(fontWeight: FontWeight.w900);

  // Font Color
  TextStyle colored(Color color) => colored(color);
  TextStyle get noColor => copyWith(color: Colors.black);

  /// Font Size
  TextStyle fSize(double size) => copyWith(fontSize: size.sp);

  /// Line Height
  TextStyle get tighter => copyWith(height: 1.25);
  TextStyle get tight => copyWith(height: 1.33);
  TextStyle get hugging => copyWith(height: 1.43);
  TextStyle get snug => copyWith(height: 1.50);
  TextStyle get normal => copyWith(height: 1.77);
  TextStyle get relaxed => copyWith(height: 2);

  /// Font Family
  TextStyle get nanum => copyWith(fontFamily: FontFamily.nanumSquareNeo);
}
