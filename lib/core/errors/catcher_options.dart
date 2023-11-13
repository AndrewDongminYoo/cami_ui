// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';

/// 배포 환경을 위한 캐쳐 옵션
/// 사용자 제보 없이도 충돌 시 마다 보고 받기 위해 [SilentReportMode] 적용.
final debugOptions = Catcher2Options(
  SilentReportMode(),
  [
    ConsoleHandler(
      enableDeviceParameters: false,
      enableApplicationParameters: false,
      handleWhenRejected: true,
    ),
  ],
);

/// 배포 환경을 위한 캐쳐 옵션
/// 에러 제보 다이얼로그를 표시하기 위해 [DialogReportMode] 적용.
final releaseOptions = Catcher2Options(
  DialogReportMode(),
  [
    EmailManualHandler(['ydm2790@gmail.com'])
  ],
);
