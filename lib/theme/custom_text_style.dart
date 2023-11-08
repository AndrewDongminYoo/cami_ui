import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeDeeporange400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepOrange400,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeGray90004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyLargeIndigo400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo400,
      );
  static get bodyLargeNanumSquareNeo =>
      theme.textTheme.bodyLarge!.nanumSquareNeo.copyWith(
        fontSize: 19.fSize,
      );
  static get bodyLargeNanumSquareNeo_1 =>
      theme.textTheme.bodyLarge!.nanumSquareNeo;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray10002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumBluegray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumDeeporange400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrange400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumGray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyMediumNanumSquareNeo =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumNanumSquareNeo13 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumNanumSquareNeo_1 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo;
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack9009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray50011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
        fontSize: 10.fSize,
      );
  static get bodySmallGray9000411 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90004_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallGreen300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green300,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallNanumSquareNeoBlack900 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallNanumSquareNeoDeeporange400 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo.copyWith(
        color: appTheme.deepOrange400,
      );
  static get headlineSmallNanumSquareNeoGray90001 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo.copyWith(
        color: appTheme.gray90001,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeGray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nanumSquareNeo {
    return copyWith(
      fontFamily: 'NanumSquare Neo',
    );
  }
}
