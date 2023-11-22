// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/data/models/check_up.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/stars.dart';

class CheckUpInfo extends StatelessWidget {
  const CheckUpInfo({
    super.key,
    required this.checkup,
  });

  final CheckUp checkup;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          Stars(score: checkup.reviewRating ?? 0),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text(
              '(${checkup.reviewsCount ?? 0})',
              style: textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
