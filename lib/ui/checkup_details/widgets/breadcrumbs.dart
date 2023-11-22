// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/data/models/check_up.dart';
import '/widgets/app_bar/bread_crumb.dart';
import '/widgets/app_bar/custom_app_bar.dart';

// 상단 브레드크럼
class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({
    super.key,
    required this.checkup,
  });

  final CheckUp checkup;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            BreadCrumb(text: '심리검사'.tr()),
            BreadCrumb(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
            BreadCrumb(
              text: checkup.type!,
              margin: EdgeInsets.only(left: 8.w),
            ),
            BreadCrumb(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
          ],
        ),
      ),
    );
  }
}
