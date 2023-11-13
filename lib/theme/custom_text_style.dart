// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';
import '/theme/theme_helper.dart';

/// 다른 글꼴 패밀리와 가중치로 분류된 텍스트 모양을 사용자 정의하기 위한 사전 정의된 텍스트 스타일 모음.
/// 또한, 이 클래스에는 특정 글꼴 패밀리를 텍스트에 쉽게 적용할 수 있는 [TextStyle]의 확장이 포함되어 있습니다.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLarge18 =>
      textTheme.bodyLarge!.copyWith(fontSize: 18);
  static TextStyle get bodyLargeGray500 =>
      textTheme.bodyLarge!.copyWith(color: appTheme.gray500);
  static TextStyle get bodyLargeGray900 =>
      textTheme.bodyLarge!.copyWith(color: appTheme.gray900);
  static TextStyle get bodyLargeGray90002 =>
      textTheme.bodyLarge!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodyLargeIndigo400 =>
      textTheme.bodyLarge!.copyWith(color: appTheme.indigo400);
  static TextStyle get bodyLargeNanumSquareNeo => textTheme.bodyLarge!.nanumNeo;
  static TextStyle get bodyMediumBlack900 =>
      textTheme.bodyMedium!.copyWith(color: Colors.black);
  static TextStyle get bodyMediumBlack90015 =>
      textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 15);
  static TextStyle get bodyMediumErrorContainer =>
      textTheme.bodyMedium!.copyWith(color: lightTheme.errorContainer);
  static TextStyle get bodyMediumGray60001 =>
      textTheme.bodyMedium!.copyWith(color: appTheme.gray60001);
  static TextStyle get bodyMediumGray800 =>
      textTheme.bodyMedium!.copyWith(color: appTheme.gray800);
  static TextStyle get bodyMediumGray90002 =>
      textTheme.bodyMedium!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodyMediumNanumSquareNeoBlack900 =>
      textTheme.bodyMedium!.nanumNeo.copyWith(color: Colors.black);
  static TextStyle get bodyMediumNanumSquareNeoBlack90013 =>
      textTheme.bodyMedium!.nanumNeo
          .copyWith(color: Colors.black, fontSize: 13);
  static TextStyle get bodyMediumOnErrorContainer =>
      textTheme.bodyMedium!.copyWith(color: lightTheme.onErrorContainer);
  static TextStyle get bodyMediumOnPrimary =>
      textTheme.bodyMedium!.copyWith(color: lightTheme.onPrimary);
  static TextStyle get bodySmall10 =>
      textTheme.bodySmall!.copyWith(fontSize: 10);
  static TextStyle get bodySmallBlack900 =>
      textTheme.bodySmall!.copyWith(color: Colors.black);
  static TextStyle get bodySmallBlack9009 =>
      textTheme.bodySmall!.copyWith(color: Colors.black, fontSize: 9);
  static TextStyle get bodySmallGray500 =>
      textTheme.bodySmall!.copyWith(color: appTheme.gray500);
  static TextStyle get bodySmallGray50011 =>
      textTheme.bodySmall!.copyWith(color: appTheme.gray500, fontSize: 11);
  static TextStyle get bodySmallGray60001 =>
      textTheme.bodySmall!.copyWith(color: appTheme.gray60001);
  static TextStyle get bodySmallGray700 =>
      textTheme.bodySmall!.copyWith(color: appTheme.gray700);
  static TextStyle get bodySmallGray90002 =>
      textTheme.bodySmall!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodySmallGreen300 =>
      textTheme.bodySmall!.copyWith(color: appTheme.green300);
  static TextStyle get bodySmallPrimaryContainer =>
      textTheme.bodySmall!.copyWith(color: lightTheme.primaryContainer);

  // Headline text style
  static TextStyle get headlineSmallBlack900 =>
      textTheme.headlineSmall!.copyWith(color: Colors.black);
  static TextStyle get headlineSmallNanumSquareNeoBlack900 =>
      textTheme.headlineSmall!.nanumNeo.copyWith(color: Colors.black);
  static TextStyle get headlineSmallNanumSquareNeoDeeporange400 =>
      textTheme.headlineSmall!.nanumNeo.copyWith(color: appTheme.deepOrange400);
  static TextStyle get headlineSmallNanumSquareNeoErrorContainer =>
      textTheme.headlineSmall!.nanumNeo
          .copyWith(color: lightTheme.errorContainer);
  static TextStyle get headlineSmallNanumSquareNeoGray90001 =>
      textTheme.headlineSmall!.nanumNeo.copyWith(color: appTheme.gray90001);
  static TextStyle get headlineSmallNanumSquareNeoOnErrorContainer =>
      textTheme.headlineSmall!.nanumNeo
          .copyWith(color: lightTheme.onErrorContainer);

  // Poppins text style
  static TextStyle get poppinsYellow100 => TextStyle(
          color: appTheme.yellow100, fontSize: 160, fontWeight: FontWeight.w400)
      .poppins;

  // Title text style
  static TextStyle get titleLargeBlack900 =>
      textTheme.titleLarge!.copyWith(color: Colors.black);
  static TextStyle get titleLargeBlack90020 =>
      textTheme.titleLarge!.copyWith(color: Colors.black, fontSize: 20);
  static TextStyle get titleLargeGray60001 =>
      textTheme.titleLarge!.copyWith(color: appTheme.gray60001, fontSize: 20);
  static TextStyle get titleLargeGray90001 =>
      textTheme.titleLarge!.copyWith(color: appTheme.gray90001);
  static TextStyle get titleLargeOnErrorContainer =>
      textTheme.titleLarge!.copyWith(color: lightTheme.onErrorContainer);
}

extension TextStyleX on TextStyle {
  /// Font Weight
  TextStyle get plain => copyWith(fontWeight: FontWeight.normal);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get thick => copyWith(fontWeight: FontWeight.w900);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle get poppins => copyWith(fontFamily: FontFamily.poppins);
  TextStyle get nanumNeo => copyWith(fontFamily: FontFamily.nanumSquareNeo);
}
