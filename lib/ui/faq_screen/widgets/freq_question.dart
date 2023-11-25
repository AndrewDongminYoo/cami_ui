// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class FreqQuestion extends StatelessWidget {
  const FreqQuestion({
    super.key,
    required this.question,
    this.isFirst = false,
  });

  final bool isFirst;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration:
          isFirst ? const BoxDecoration(color: Color(0xFFF3F4F6)) : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h, bottom: 7.h),
            child: Text(
              'Q.',
              style: textTheme.bodyMedium!.nanum,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.w,
                top: 7.h,
                bottom: 8.h,
              ),
              child: Text(
                question,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: textTheme.bodyMedium!.nanum,
              ),
            ),
          ),
          Icon(
            CupertinoIcons.chevron_down,
            size: 16.w,
            weight: 3,
            color: const Color(0xFF5F6061),
          ),
        ],
      ),
    );
  }
}
