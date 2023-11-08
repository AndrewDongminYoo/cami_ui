// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

/// 다른 글꼴 패밀리와 가중치로 분류된 텍스트 모양을 사용자 정의하기 위한 사전 정의된 텍스트 스타일 모음.
/// 또한, 이 클래스에는 특정 글꼴 패밀리를 텍스트에 쉽게 적용할 수 있는 [TextStyle]의 확장이 포함되어 있습니다.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLarge18 =>
      theme.textTheme.bodyLarge!.copyWith(fontSize: 18.sp);
  static TextStyle get bodyLargeDeeporange400 => theme.textTheme.bodyLarge!
      .copyWith(color: appTheme.deepOrange400, fontSize: 18.sp);
  static TextStyle get bodyLargeErrorContainer => theme.textTheme.bodyLarge!
      .copyWith(color: theme.colorScheme.errorContainer, fontSize: 18.sp);
  static TextStyle get bodyLargeGray500 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray500);
  static TextStyle get bodyLargeGray900 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray900);
  static TextStyle get bodyLargeGray90002 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodyLargeIndigo400 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.indigo400);
  static TextStyle get bodyLargeNanumSquareNeo =>
      theme.textTheme.bodyLarge!.nanumSquareNeo;
  static TextStyle get bodyLargeNanumSquareNeo_1 =>
      theme.textTheme.bodyLarge!.nanumSquareNeo;
  static TextStyle get bodyMedium13 =>
      theme.textTheme.bodyMedium!.copyWith(fontSize: 13.sp);
  static TextStyle get bodyMedium15 =>
      theme.textTheme.bodyMedium!.copyWith(fontSize: 15.sp);
  static TextStyle get bodyMediumBlack900 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900);
  static TextStyle get bodyMediumBlack90015 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.black900, fontSize: 15.sp);
  static TextStyle get bodyMediumBluegray10001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray10001);
  static TextStyle get bodyMediumBluegray300 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray300);
  static TextStyle get bodyMediumBluegray700 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray700);
  static TextStyle get bodyMediumBluegray900 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray900);
  static TextStyle get bodyMediumDeeporange400 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.deepOrange400);
  static TextStyle get bodyMediumErrorContainer => theme.textTheme.bodyMedium!
      .copyWith(color: theme.colorScheme.errorContainer);
  static TextStyle get bodyMediumGray500 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray500);
  static TextStyle get bodyMediumGray60001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray60001);
  static TextStyle get bodyMediumGray800 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray800);
  static TextStyle get bodyMediumGray90001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray90001);
  static TextStyle get bodyMediumGray90002 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodyMediumNanumSquareNeo =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(fontSize: 15.sp);
  static TextStyle get bodyMediumNanumSquareNeo13 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(fontSize: 13.sp);
  static TextStyle get bodyMediumNanumSquareNeoBlack900 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo
          .copyWith(color: appTheme.black900);
  static TextStyle get bodyMediumNanumSquareNeoBlack90013 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo
          .copyWith(color: appTheme.black900, fontSize: 13.sp);
  static TextStyle get bodyMediumNanumSquareNeo_1 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo;
  static TextStyle get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!
      .copyWith(color: theme.colorScheme.onErrorContainer);
  static TextStyle get bodyMediumOnPrimary =>
      theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!
          .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get bodyMediumWhiteA700 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.whiteA700);
  static TextStyle get bodySmall10 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 10.sp);
  static TextStyle get bodySmall11 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 11.sp);
  static TextStyle get bodySmall9 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 9.sp);
  static TextStyle get bodySmallBlack900 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.black900);
  static TextStyle get bodySmallBlack9009 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.black900, fontSize: 9.sp);
  static TextStyle get bodySmallBluegray300 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray300);
  static TextStyle get bodySmallGray500 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray500);
  static TextStyle get bodySmallGray50011 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.gray500, fontSize: 11.sp);
  static TextStyle get bodySmallGray600 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray600);
  static TextStyle get bodySmallGray60001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray60001);
  static TextStyle get bodySmallGray700 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray700);
  static TextStyle get bodySmallGray800 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray800);
  static TextStyle get bodySmallGray90001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray90001);
  static TextStyle get bodySmallGray90002 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.gray90002, fontSize: 11.sp);
  static TextStyle get bodySmallGray90002_1 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodySmallGray90002_2 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodySmallGreen300 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.green300);
  static TextStyle get bodySmallPrimaryContainer => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.primaryContainer);

  // Headline text style
  static TextStyle get headlineSmallBlack900 =>
      theme.textTheme.headlineSmall!.copyWith(color: appTheme.black900);
  static TextStyle get headlineSmallNanumSquareNeoBlack900 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo
          .copyWith(color: appTheme.black900);
  static TextStyle get headlineSmallNanumSquareNeoDeeporange400 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo
          .copyWith(color: appTheme.deepOrange400);
  static TextStyle get headlineSmallNanumSquareNeoErrorContainer =>
      theme.textTheme.headlineSmall!.nanumSquareNeo
          .copyWith(color: theme.colorScheme.errorContainer);
  static TextStyle get headlineSmallNanumSquareNeoGray90001 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo
          .copyWith(color: appTheme.gray90001);
  static TextStyle get headlineSmallNanumSquareNeoOnErrorContainer =>
      theme.textTheme.headlineSmall!.nanumSquareNeo
          .copyWith(color: theme.colorScheme.onErrorContainer);

  // Poppins text style
  static TextStyle get poppinsYellow100 => TextStyle(
          color: appTheme.yellow100,
          fontSize: 160.sp,
          fontWeight: FontWeight.w400)
      .poppins;

  // Title text style
  static TextStyle get titleLargeBlack900 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.black900);
  static TextStyle get titleLargeBlack90020 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.black900, fontSize: 20.sp);
  static TextStyle get titleLargeGray60001 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.gray60001, fontSize: 20.sp);
  static TextStyle get titleLargeGray90001 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.gray90001);
  static TextStyle get titleLargeOnErrorContainer => theme.textTheme.titleLarge!
      .copyWith(color: theme.colorScheme.onErrorContainer);
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }

  TextStyle get nanumSquareNeo {
    return copyWith(fontFamily: 'NanumSquare Neo');
  }
}
