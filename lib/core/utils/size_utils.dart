// 🎯 Dart imports:
import 'dart:ui';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// ignore: deprecated_member_use
MediaQueryData mediaQueryData = MediaQueryData.fromView(window);

// 이것들은 피그마 디자인의 뷰포트 값입니다.
// 이것들은 코드에서 UI를 반응적으로 만들기 위한 참조로 사용됩니다.
const num FIGMA_DESIGN_WIDTH = 393;
const num FIGMA_DESIGN_HEIGHT = 844;

/// 이 방법은 장치 뷰포트 너비를 얻는 데 사용됩니다.
double get _width {
  return mediaQueryData.size.width;
}

/// 이 방법은 장치 뷰포트 높이를 얻는 데 사용됩니다.
num get _height {
  final num statusBar = mediaQueryData.viewPadding.top;
  final num bottomBar = mediaQueryData.viewPadding.bottom;
  final num screenHeight = mediaQueryData.size.height - statusBar - bottomBar;
  return screenHeight;
}

/// 이 확장은 뷰포트 높이에 따라 화면 또는 위젯의 패딩/마진(상단 및 하단) 및 높이를 설정하는 데 사용됩니다.
extension ResponsiveExtension on num {
  /// 이 방법은 뷰포트 너비에 따라 화면 또는 위젯의 패딩/마진(왼쪽과 오른쪽) 및 너비를 설정하는 데 사용됩니다.
  double get w => (this * _width) / FIGMA_DESIGN_WIDTH;

  /// 이 방법은 뷰포트 높이에 따라 화면이나 위젯의 패딩/마진(상단 및 하단) 및 높이를 설정하는 데 사용됩니다.
  double get h => (this * _height) / FIGMA_DESIGN_HEIGHT;

  /// 이 방법은 이미지 높이와 너비에서 가장 작은 px를 설정하는 데 사용됩니다.
  double get r => h < w ? h.toDoubleValue() : w.toDoubleValue();

  /// 이 방법은 뷰포트에 따라 텍스트 글꼴 크기를 설정하는 데 사용됩니다.
  double get sp => r;
}

extension /** FormatExtension */ on num {
  /// 제공된 분수에 따라 포맷된 [더블] 값을 반환합니다.
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }
}

/// number 값을 백분율로 변환합니다
extension PercentSized on num {
  /// height: 50.0.hp = 50%
  double get hp => mediaQueryData.size.height * (this / 100);

  /// width: 30.0.wp = 30%
  double get wp => mediaQueryData.size.width * (this / 100);
}
