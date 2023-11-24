// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';
import 'check_up_chip.dart';

class CheckUpItemWidget extends StatelessWidget {
  const CheckUpItemWidget({
    super.key,
    required this.thumbPath,
    required this.short,
    required this.nickname,
    required this.description,
    required this.location,
  });

  final String thumbPath;
  final String short;
  final String nickname;
  final String description;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundTop20,
              color: const Color(0xFFD9D9D9),
            ),
            child: CustomImageView(
              radius: BorderRadiusStyle.roundTop20,
              imagePath: thumbPath,
              height: 164.h,
              width: 346.w,
            ),
          ),
          SizedBox(height: 14.h),
          CheckUpChip(
            onPressed: (context) => context.pushNamed(location),
            checkupName: short,
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Text(nickname,
                style: textTheme.bodyMedium!
                    .colored(const Color(0xFF1F2020))
                    .bold),
          ),
          SizedBox(height: 7.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Text(
              description,
              style: textTheme.bodySmall!.colored(const Color(0xFF414142)),
              maxLines: 3,
            ),
          ),
          SizedBox(height: 39.h),
          InkWell(
            onTap: () => context.pushNamed(location),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Row(
                children: [
                  Text('자세히 보기'.tr(),
                      style: textTheme.bodySmall!
                          .colored(const Color(0xFF5F6061))),
                  Icon(
                    CupertinoIcons.right_chevron,
                    size: 12.r,
                    weight: 3,
                    color: const Color(0xFF5F6061),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
