// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/app/app_state_notifier.dart';
import '/core/utils/duration_extensions.dart';
import '/routes/app_routes.dart';

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  /// 스택에 경로가 하나만 있는 경우 팝업 대신 초기 페이지로 이동합니다.
  void safePop() {
    if (canPop()) {
      pop();
    } else {
      if (kDebugMode) {
        go(AppRoutes.appNavigationScreen);
      } else {
        go(AppRoutes.homeScreen);
      }
    }
  }

  // 현재 경로를 새로고침합니다.
  void reload() {
    GoRouter.of(this).refresh();
    scrollToTop();
  }

  /// [ScrollView]의 가장 상단으로 이동합니다.
  /// [PrimaryScrollController]가 동작하기 위해서는 반드시 [ScrollView.primary]가 [true]여야 합니다.
  void scrollToTop() {
    PrimaryScrollController.maybeOf(this)?.animateTo(
      /** top offset */ 0,
      duration: 300.ms,
      curve: Curves.bounceIn,
    );
  }

  /// 현재 페이지의 경로를 리턴합니다. 익명 경로인 경우 [null]을 리턴합니다.
  String? get currentLocation => ModalRoute.of(this)!.settings.name;
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.I;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.notifyOnAuthChange = false;
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.notifyOnAuthChange = false;
}
