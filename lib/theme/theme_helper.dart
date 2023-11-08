import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray90002,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blueGray10001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimary,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 36.fSize,
          fontFamily: 'NanumSquare Neo',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray90001,
          fontSize: 30.fSize,
          fontFamily: 'NanumSquare Neo',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray90002,
          fontSize: 29.fSize,
          fontFamily: 'NanumSquare Neo',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray90002,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 23.fSize,
          fontFamily: 'NanumSquare Neo',
          fontWeight: FontWeight.w400,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFFF50),
    primaryContainer: Color(0XFF414142),
    secondaryContainer: Color(0XFFD9D9D9),

    // Error colors
    errorContainer: Color(0XFFF0803D),
    onError: Color(0XFFE5E5E5),
    onErrorContainer: Color(0XFF171717),

    // On colors(text colors)
    onPrimary: Color(0XFF1F2937),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF262626),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50 => Color(0XFFE6F0FF);
  Color get blue800 => Color(0XFF1D59C4);

  // BlueGray
  Color get blueGray100 => Color(0XFFD1D5DB);
  Color get blueGray10001 => Color(0XFFD4D4D4);
  Color get blueGray300 => Color(0XFF9CA3AF);
  Color get blueGray700 => Color(0XFF4B5563);
  Color get blueGray70001 => Color(0XFF525252);
  Color get blueGray800 => Color(0XFF374151);
  Color get blueGray900 => Color(0XFF1F2937);

  // BlueGrayb
  Color get blueGray1006b => Color(0X6BCCCCCC);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFF0803D);

  // Gray
  Color get gray100 => Color(0XFFF3F4F6);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray20001 => Color(0XFFEEEEEE);
  Color get gray300 => Color(0XFFE5E5E5);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray500 => Color(0XFFA3A3A3);
  Color get gray600 => Color(0XFF757575);
  Color get gray60001 => Color(0XFF6B7280);
  Color get gray700 => Color(0XFF5F6061);
  Color get gray800 => Color(0XFF404040);
  Color get gray900 => Color(0XFF202020);
  Color get gray90001 => Color(0XFF121212);
  Color get gray90002 => Color(0XFF1F2020);
  Color get gray90003 => Color(0XFF262626);

  // Grayc
  Color get gray5004c => Color(0X4C939393);

  // Green
  Color get green300 => Color(0XFF6FD574);

  // Indigo
  Color get indigo200 => Color(0XFF9BB1EB);
  Color get indigo400 => Color(0XFF5079D7);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow100 => Color(0XFFFEFFBF);
  Color get yellow400 => Color(0XFFFFFF50);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
