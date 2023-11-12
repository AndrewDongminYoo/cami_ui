// 🎯 Dart imports:
import 'dart:async';

extension DurationUtils on num {
  /// 일부 콜백(또는 코드 실행)을 지연시키는 유틸리티입니다.
  Future delay([FutureOr Function()? callback]) async => Future.delayed(
        Duration(milliseconds: round() * 1000),
        callback,
      );

  /// 숫자로 지속 시간을 쉽게 만드는 방법.
  ///
  /// Example:
  /// ```
  /// print(1.hours + 30.min);
  /// ```
  Duration get microseconds => Duration(microseconds: round());
  Duration get ms => Duration(microseconds: round() * 1000);
  Duration get sec => Duration(milliseconds: round() * 1000);
  Duration get min => Duration(seconds: round() * Duration.secondsPerMinute);
  Duration get hours => Duration(minutes: round() * Duration.minutesPerHour);
  Duration get days => Duration(hours: round() * Duration.hoursPerDay);
}
