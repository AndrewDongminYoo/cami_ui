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
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeGray90003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeGray90004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyLargeIndigo400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo400,
      );
  static get bodyLargeNanumSquareNeo =>
      theme.textTheme.bodyLarge!.nanumSquareNeo;
  static get bodyLargeNanumSquareNeo_1 =>
      theme.textTheme.bodyLarge!.nanumSquareNeo;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10001,
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
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray50013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
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
  static get bodyMediumNanumSquareNeoBlack900 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumNanumSquareNeoBlack90013 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumNanumSquareNeoBlack900_1 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumNanumSquareNeo_1 =>
      theme.textTheme.bodyMedium!.nanumSquareNeo;
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumTeal900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal900,
        fontSize: 13.fSize,
      );
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
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack9009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallBluegray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallErrorContainer11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallGray50010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallGray50010_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallGray50011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallGray500_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallGray60010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90002_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray90002_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray90003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90003,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90003_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodySmallGray90003_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90003,
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
  static get bodySmallNanumSquareNeoBlack900 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallNanumSquareNeoBlack90010 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallNanumSquareNeoBlack9008 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
        fontSize: 8.fSize,
      );
  static get bodySmallNanumSquareNeoBlack9009 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallNanumSquareNeoBlack900_1 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallNanumSquareNeoGray500 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallNanumSquareNeoGray500_1 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallNanumSquareNeoOnErrorContainer =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallNanumSquareNeoOnErrorContainer11 =>
      theme.textTheme.bodySmall!.nanumSquareNeo.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Display text style
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
      );
  static get displaySmallNanumSquareNeoBluegray800 =>
      theme.textTheme.displaySmall!.nanumSquareNeo.copyWith(
        color: appTheme.blueGray800,
      );
  // Headline text style
  static get headlineLargeNanumSquareNeoGray90001 =>
      theme.textTheme.headlineLarge!.nanumSquareNeo.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w800,
      );
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
  static get headlineSmallNanumSquareNeoErrorContainer =>
      theme.textTheme.headlineSmall!.nanumSquareNeo.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineSmallNanumSquareNeoGray90001 =>
      theme.textTheme.headlineSmall!.nanumSquareNeo.copyWith(
        color: appTheme.gray90001,
      );
  static get headlineSmallNanumSquareNeoOnErrorContainer =>
      theme.textTheme.headlineSmall!.nanumSquareNeo.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  // Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsYellow100 => TextStyle(
        color: appTheme.yellow100,
        fontSize: 160.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack90020 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
  static get titleLargeGray60001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 20.fSize,
      );
  static get titleLargeGray60002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60002,
        fontSize: 20.fSize,
      );
  static get titleLargeGray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
}

extension on TextStyle {
  TextStyle get nanumSquareNeo {
    return copyWith(
      fontFamily: 'NanumSquare Neo',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
