// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';

String _appTheme = 'light';
const defaultDensity = VisualDensity(vertical: -4, horizontal: -4);

/// 테마와 색상을 관리하기 위한 도우미 클래스.
class ThemeHelper {
  // 앱에서 지원하는 사용자 지정 색상 테마 맵
  final Map<String, AppPalette> _supportedCustomColor = {
    'light': AppPalette(),
  };

  // 앱에서 지원하는 색 구성표 맵
  final Map<String, ColorScheme> _supportedColorScheme = {
    'light': AppColorScheme().light,
  };

  /// 앱 테마를 [_newTheme]로 변경합니다.
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// 현재 테마의 기본 색상을 반환합니다.
  AppPalette get themeColor {
    // 주어진 테마가 발견되지 않거나 생성되지 않음을 알리기 위한 예외를 던져
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          '$_appTheme를 찾을 수 없습니다. JSON에 이 테마 클래스를 추가했는지 확인하세요. flutter pub run build_runner를 실행해 보세요.');
    }
    // 맵에서 테마를 리턴합니다.
    return _supportedCustomColor[_appTheme] ?? AppPalette();
  }

  /// 현재 테마 데이터를 반환합니다.
  ThemeData get themeData {
    // 주어진 테마가 발견되지 않거나 생성되지 않음을 알리기 위한 예외를 던져
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          '$_appTheme를 찾을 수 없습니다. JSON에 이 테마 클래스를 추가했는지 확인하세요. flutter pub run build_runner를 실행해 보세요.');
    }
    // 맵에서 테마를 리턴합니다.
    final colorScheme =
        _supportedColorScheme[_appTheme] ?? AppColorScheme().light;

    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1F2020),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.w),
          ),
          visualDensity: defaultDensity,
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: const Color(0xFFD4D4D4),
            width: 1.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.w),
          ),
          visualDensity: defaultDensity,
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.onPrimaryContainer;
            }
            return colorScheme.onSurface;
          },
        ),
        visualDensity: defaultDensity,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.onPrimaryContainer;
            }
            return colorScheme.onSurface;
          },
        ),
        side: const BorderSide(),
        visualDensity: defaultDensity,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimary,
      ),
    );
  }
}

/// 지원되는 텍스트 테마 스타일을 포함하는 클래스.
TextTheme textTheme = TextTheme(
  bodyLarge: GoogleFonts.poppins(
    color: const Color(0xFF000000),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: GoogleFonts.poppins(
    color: const Color(0xFF000000),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: GoogleFonts.poppins(
    color: const Color(0xFF000000),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  ),
  displaySmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 36.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  headlineLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 30.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  headlineMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 28.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  headlineSmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 24.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  titleLarge: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 22.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  titleMedium: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 20.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  titleSmall: TextStyle(
    color: const Color(0xFF000000),
    fontSize: 18.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),

  /// `deprecated` 된 [button] 속성 대신 [labelLarge] 사용.
  labelLarge: GoogleFonts.poppins(
    color: const Color(0xFFFFFFFF),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  ),
  labelMedium: GoogleFonts.poppins(
    color: const Color(0xFF000000),
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
  ),
);

/// 지원되는 색 구성표를 포함하는 클래스.
class AppColorScheme {
  final light = const ColorScheme.light(
    // 기본 색상
    primary: Color(0xFFFFFF50),
    primaryContainer: Color(0xFF414142),
    secondaryContainer: Color(0xFFD9D9D9),

    // 오류 색상
    errorContainer: Color(0xFFF0803D),
    onError: Color(0xFFE5E5E5),
    onErrorContainer: Color(0xFF171717),

    // 텍스트 색상
    onPrimary: Color(0xFF1F2937),
    onPrimaryContainer: Color(0xFFFFFFFF),
    onSecondaryContainer: Color(0xFF262626),
  );
}

/// 기본 테마의 사용자 지정 색상을 포함하는 클래스.
class AppPalette {
  /// #1D59C4
  static const Color denim = Color(0xFF1D59C4);

  /// #5079D7
  static const Color havelockBlue = Color(0xFF5079D7);

  /// #9BB1EB
  static const Color perano = Color(0xFF9BB1EB);

  /// #121212
  static const Color codGray1 = Color(0xFF121212);

  /// #171717
  static const Color codGray2 = Color(0xFF171717);

  /// #1F2020
  static const Color shark = Color(0xFF1F2020);

  /// #1F2937
  static const Color ebonyClay = Color(0xFF1F2937);

  /// #202020
  static const Color mineShaft1 = Color(0xFF202020);

  /// #262626
  static const Color mineShaft2 = Color(0xFF262626);

  /// #404040
  static const Color tundora = Color(0xFF404040);

  /// #414142
  static const Color shipGray = Color(0xFF414142);

  /// #4B5563
  static const Color riverBed = Color(0xFF4B5563);

  /// #525252
  static const Color emperor = Color(0xFF525252);

  /// #5F6061
  static const Color shuttleGray = Color(0xFF5F6061);

  /// #6B7280
  static const Color paleSky = Color(0xFF6B7280);

  /// #757575
  static const Color boulder = Color(0xFF757575);

  /// #888888
  static const Color gray = Color(0xFF888888);

  /// #9393934C
  static const Color nickel = Color(0x4C939393);

  /// #9CA3AF
  static const Color grayChateau = Color(0xFF9CA3AF);

  /// #A3A3A3
  static const Color silverChalice = Color(0xFFA3A3A3);

  /// #CCCCCC6B
  static const Color cccccc6B = Color(0x6BCCCCCC);

  /// #D4D4D4
  static const Color alto1 = Color(0xFFD4D4D4);

  /// #D9D9D9
  static const Color alto2 = Color(0xFFD9D9D9);

  /// #E5E5E5
  static const Color mercury = Color(0xFFE5E5E5);

  /// #E6F0FF
  static const Color zumthor = Color(0xFFE6F0FF);

  /// #EEEEEE
  static const Color gallery = Color(0xFFEEEEEE);

  /// #E5E7EB
  static const Color athensGray1 = Color(0xFFE5E7EB);

  /// #F3F4F6
  static const Color athensGray2 = Color(0xFFF3F4F6);

  /// #F5F5F5
  static const Color wildSand = Color(0xFFF5F5F5);

  /// #FAFAFA
  static const Color alabaster = Color(0xFFFAFAFA);

  /// #6FD574 : SUCCESS
  static const Color pastelGreen = Color(0xFF6FD574);

  /// #F0803D : WARN
  static const Color jaffa = Color(0xFFF0803D);

  /// #FFFF50 : INFO
  static const Color gorse = Color(0xFFFFFF50);

  /// #FEFFBF
  static const Color shalimar = Color(0xFFFEFFBF);
}

AppPalette get appTheme => ThemeHelper().themeColor;
ThemeData get theme => ThemeHelper().themeData;
