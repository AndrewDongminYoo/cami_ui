// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class CouponCountBadge extends StatelessWidget {
  const CouponCountBadge({
    super.key,
    this.count = 0,
  });

  final int? count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 18.r,
          width: 18.r,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(9.w),
          ),
        ),
        Center(
          child: Text(
            count.toString(),
            style: textTheme.bodySmall!.colored(Colors.white),
          ),
        )
      ],
    );
  }
}
