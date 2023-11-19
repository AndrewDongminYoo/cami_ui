// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class GatewayTitle extends StatelessWidget implements PreferredSizeWidget {
  const GatewayTitle({super.key});

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        80.h,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '앱 게이트웨이 (개발 프로세스)',
              textAlign: TextAlign.center,
              style: textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '아래 데모 화면에서 앱의 UI를 확인하세요.',
              textAlign: TextAlign.center,
              style: textTheme.titleSmall!.fSize(16),
            ),
          ),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
