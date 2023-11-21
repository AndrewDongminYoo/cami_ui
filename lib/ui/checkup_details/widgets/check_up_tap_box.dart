// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class CheckUpTapBox extends StatelessWidget {
  const CheckUpTapBox({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 361.w,
      child: TabBar(
        controller: tabController,
        labelPadding: EdgeInsets.zero,
        labelColor: Colors.white,
        labelStyle: textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
        unselectedLabelColor: const Color(0xFFA3A3A3),
        unselectedLabelStyle:
            textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
        indicator: BoxDecoration(
          color: const Color(0xFF262626),
          borderRadius: BorderRadius.circular(8.w),
        ),
        tabs: [
          Tab(child: Text('검사소개'.tr())),
          Tab(child: Text('구매후기'.tr())),
        ],
      ),
    );
  }
}
