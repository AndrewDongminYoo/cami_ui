// 🐦 Flutter imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class NoticeContent extends StatelessWidget {
  const NoticeContent({
    super.key,
    required this.userName,
    required this.userMessage,
    required this.userDate,
  });

  final String userName;
  final String userMessage;
  final String userDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 15.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.w, bottom: 3.h),
            child: Text(
              userName,
              style: textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.w, bottom: 3.h),
            child: Text(
              userMessage,
              style: textTheme.bodySmall,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 3.h),
            child: Text(
              userDate,
              style: textTheme.bodySmall!
                  .colored(const Color(0xFFA3A3A3))
                  .fSize(11),
            ),
          ),
        ],
      ),
    );
  }
}
