// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/core/catcher_2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';

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
            navigatorKey: Catcher2.navigatorKey,
            routes: AppRoutes.routes,
            initialLocation: AppRoutes.appNavigationScreen,
          ),
        );
      },
    );
  }
}
