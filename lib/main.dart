// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// 🌎 Project imports:
import '/app/my_app.dart';
import '/core/constants/constants.dart';
import '/core/errors/catcher_options.dart';
import '/theme/theme_helper.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  await initializeDateFormatting('ko');
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  /// 필요에 따라 테마를 업데이트하세요.
  ThemeHelper().changeTheme('light');

  await Supabase.initialize(
    url: 'https://cqnnqjmqncvwpsdlgvtu.supabase.co',
    anonKey: anonKey,
  );

  Catcher2(
    debugConfig: debugOptions,
    releaseConfig: releaseOptions,
    runAppFunction: () {
      runApp(EasyLocalization(
        assetLoader: JsonAssetLoader(),
        path: 'assets/messages',
        supportedLocales: const [Locale('ko')],
        fallbackLocale: const Locale('ko'),
        child: const MyApp(),
      ));
    },
  );
}
