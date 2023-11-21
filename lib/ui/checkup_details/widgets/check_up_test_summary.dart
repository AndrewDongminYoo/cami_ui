// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class CheckUpTestSummary extends StatelessWidget {
  const CheckUpTestSummary({
    super.key,
    this.duration = 20,
    required this.questions,
  });

  final int questions;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361.w,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
        vertical: 15.h,
      ),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('문항'.tr(), style: textTheme.bodyMedium),
              SizedBox(width: 42.w),
              Text(
                '$questions 문항'.tr(),
                style: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text('소요시간'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text(
                  '약 $duration분'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
