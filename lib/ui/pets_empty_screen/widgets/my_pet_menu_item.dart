// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import 'coupon_count_badge.dart';

class MyPetMenuItem extends StatelessWidget {
  const MyPetMenuItem({
    super.key,
    required this.text,
    this.count,
    this.decoration,
    this.onPressed,
  });

  final String text;
  final int? count;
  final Decoration? decoration;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 361.w,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
        decoration: decoration ?? AppDecoration.fillGray50,
        child: Row(
          children: [
            Text(text, style: textTheme.bodyLarge),
            if (count != null)
              Container(
                height: 20.h,
                width: 18.w,
                margin: EdgeInsets.only(left: 5.w, bottom: 3.h),
                child: CouponCountBadge(count: count),
              ),
          ],
        ),
      ),
    );
  }
}
