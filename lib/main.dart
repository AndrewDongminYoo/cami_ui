// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/navigator_service.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  /// 필요에 따라 테마를 업데이트하세요.
  ThemeHelper().changeTheme('primary');

  runApp(EasyLocalization(
    assetLoader: JsonAssetLoader(),
    path: 'assets/messages',
    supportedLocales: const [Locale('ko')],
    fallbackLocale: const Locale('ko'),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      title: '카미 CAMI',
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      routerConfig: GoRouter(
        navigatorKey: NavigatorService.key,
        routes: AppRoutes.routes,
        initialLocation: AppRoutes.appNavigationScreen,
      ),
    );
  }
}
