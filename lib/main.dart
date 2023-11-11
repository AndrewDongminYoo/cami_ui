// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';

// 🌎 Project imports:
import '/core/utils/navigator_service.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  /// 필요에 따라 테마를 업데이트하세요.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: '카미랩'.tr,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorService.key,
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ko')],
      initialRoute: AppRoutes.appNavigationScreen,
      routes: AppRoutes.routes,
    );
  }
}
