// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// Global Navigator Key를 싱글톤패턴으로 관리하기 위한 클래스
abstract class NavigatorService {
  static GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
}
