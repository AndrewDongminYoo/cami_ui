// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class CheckupItemWidget extends StatelessWidget {
  const CheckupItemWidget({
    super.key,
    required this.imagePath,
    required this.short,
    required this.title,
    required this.description,
    required this.location,
  });

  final String imagePath;
  final String short;
  final String title;
  final String description;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
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
              imagePath: imagePath,
              height: 164.h,
              width: 346.w,
            ),
          ),
          SizedBox(height: 14.h),
          CustomElevatedButton(
            onPressed: (context) => context.pushNamed(location),
            height: 24.h,
            width: 42.w,
            text: short,
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            buttonTextStyle: textTheme.bodySmall!.fSize(10),
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Text(
              title,
              style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
            ),
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
                  Text(
                    '자세히 보기'.tr(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFF5F6061)),
                  ),
                  CustomImageView(
                    imagePath: Assets.svg.imgArrowDownGray700.path,
                    height: 10.h,
                    width: 6.w,
                    margin: EdgeInsets.only(
                      left: 9.w,
                      top: 6.h,
                    ),
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
