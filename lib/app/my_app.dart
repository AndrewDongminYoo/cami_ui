// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/core/catcher_2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/errors/exceptions.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/routes/route_observer.dart';
import '/theme/theme_helper.dart';
import '/ui/error_page_screen/error_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return ScreenUtilInit(
      designSize: figmaFrameSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, Widget? _) {
        return MaterialApp.router(
          theme: theme,
          title: '카미 CAMI',
          debugShowCheckedModeBanner: false,
          builder: (context, Widget? widget) {
            return widget ?? Assets.lotties.loading.lottie();
          },
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          routerConfig: GoRouter(
            debugLogDiagnostics: true,
            errorBuilder: (context, state) {
              final error = PageException(404, '${state.uri} 페이지가 존재하지 않아요.');
              return ErrorPage(error: error);
            },
            initialLocation: AppRoutes.appNavigationScreen,
            navigatorKey: Catcher2.navigatorKey,

            /// 경로 빌더와 오류 페이지 빌더를 사용하여 [GoRouter]를 구성하는 기본 생성자입니다.
            /// 경로는 null이 아니어야 하며 /와 일치하는 [GoRouter]를 포함해야 합니다.
            observers: [CustomRouteObserver()],

            /// 웹에서 기록 항목 생성을 비활성화하려면 true로 설정합니다.
            routerNeglect: true,
            routes: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
