// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';

String _appTheme = 'primary';
const defaultDensity = VisualDensity(vertical: -4, horizontal: -4);

/// 테마와 색상을 관리하기 위한 도우미 클래스.
class ThemeHelper {
  // 앱에서 지원하는 사용자 지정 색상 테마 맵
  final Map<String, AppPalette> _supportedCustomColor = {
    'primary': AppPalette()
  };

  // 앱에서 지원하는 색 구성표 맵
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': lightTheme
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
    final colorScheme = _supportedColorScheme[_appTheme] ?? lightTheme;

    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray90002,
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
            color: appTheme.blueGray10001,
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
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: defaultDensity,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer;
          }
          return colorScheme.onSurface;
        }),
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
  bodyLarge: TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    color: appTheme.gray500,
    fontSize: 14.sp,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  ),
  displaySmall: TextStyle(
    color: appTheme.blueGray800,
    fontSize: 36.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  headlineLarge: TextStyle(
    color: appTheme.gray90001,
    fontSize: 30.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  headlineMedium: TextStyle(
    color: appTheme.gray90002,
    fontSize: 29.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
  headlineSmall: TextStyle(
    color: appTheme.gray90002,
    fontSize: 24.sp,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w400,
  ),
  titleLarge: TextStyle(
    color: lightTheme.errorContainer,
    fontSize: 23.sp,
    fontFamily: FontFamily.nanumSquareNeo,
    fontWeight: FontWeight.w400,
  ),
);

/// 지원되는 색 구성표를 포함하는 클래스.
const lightTheme = ColorScheme.light(
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

/// 기본 테마의 사용자 지정 색상을 포함하는 클래스.
class AppPalette {
  // 파란색
  Color get blue50 => const Color(0xFFE6F0FF);
  Color get blue800 => const Color(0xFF1D59C4);

  // 푸른회색
  Color get blueGray100 => const Color(0xFFD1D5DB);
  Color get blueGray10001 => const Color(0xFFD4D4D4);
  Color get blueGray300 => const Color(0xFF9CA3AF);
  Color get blueGray700 => const Color(0xFF4B5563);
  Color get blueGray70001 => const Color(0xFF525252);
  Color get blueGray800 => const Color(0xFF374151);
  Color get blueGray900 => const Color(0xFF1F2937);
  Color get blueGray1006b => const Color(0x6BCCCCCC);

  // 딥 오렌지
  Color get deepOrange400 => const Color(0xFFF0803D);

  // 회색
  Color get gray50 => const Color(0xFFFAFAFA);
  Color get gray100 => const Color(0xFFF3F4F6);
  Color get gray10001 => const Color(0xFFF5F5F5);
  Color get gray200 => const Color(0xFFE5E7EB);
  Color get gray20001 => const Color(0xFFEEEEEE);
  Color get gray300 => const Color(0xFFE5E5E5);
  Color get gray500 => const Color(0xFFA3A3A3);
  Color get gray5004c => const Color(0x4C939393);
  Color get grayGray => const Color(0xFF888888);
  Color get gray600 => const Color(0xFF757575);
  Color get gray60001 => const Color(0xFF6B7280);
  Color get gray700 => const Color(0xFF5F6061);
  Color get gray800 => const Color(0xFF404040);
  Color get gray900 => const Color(0xFF202020);
  Color get gray90001 => const Color(0xFF121212);
  Color get gray90002 => const Color(0xFF1F2020);
  Color get gray90003 => const Color(0xFF262626);

  // 녹색
  Color get green300 => const Color(0xFF6FD574);

  // 남색
  Color get indigo200 => const Color(0xFF9BB1EB);
  Color get indigo400 => const Color(0xFF5079D7);

  // 노란색
  Color get yellow100 => const Color(0xFFFEFFBF);
  Color get yellow400 => const Color(0xFFFFFF50);
}

AppPalette get appTheme => ThemeHelper().themeColor;
ThemeData get theme => ThemeHelper().themeData;
