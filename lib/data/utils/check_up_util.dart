// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';

// 🌎 Project imports:
import '/data/models/check_up.dart';

final format = NumberFormat('#,##0원', 'ko');

/// https://gist.github.com/AndrewDongminYoo/b76b78bc437c5352547f919070e08e95
extension ValueParse on CheckUp {
  int get krwVal {
    if (price?.toLowerCase() == '무료'.tr()) {
      return 0;
    } else {
      return format.parse(price?.replaceAll(RegExp('[^0-9]'), '') ?? '0')
          as int;
    }
  }

  int get durationApprox {
    if (duration != null) {
      return duration!;
    } else if (questions != null) {
      return ((questions!) / 8).round();
    } else {
      return 20;
    }
  }
}

extension ValueToWon on int {
  String toKRW() {
    if (this == 0) {
      return '무료'.tr();
    }
    return format.format(this);
  }
}
