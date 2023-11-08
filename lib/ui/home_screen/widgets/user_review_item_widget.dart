// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/widgets/custom_image_view.dart';

class UserReviewItemWidget extends StatelessWidget {
  const UserReviewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 284.h,
        width: 342.w,
        margin: EdgeInsets.only(right: 19.w),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 40.h,
                ),
                decoration: AppDecoration.outlineGrayC
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: Assets.svg.imgFrameGray90002.path,
                      height: 13.h,
                      width: 17.w,
                    ),
                    SizedBox(height: 16.h),
                    SizedBox(
                      width: 228.w,
                      child: Text(
                        'msg25'.tr.toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray90002_1
                            .copyWith(height: 1.33),
                      ),
                    ),
                    Text(
                      'msg26'.tr.toUpperCase(),
                      style: CustomTextStyles.bodySmallGray90002_1,
                    ),
                    Container(
                      width: 229.w,
                      margin: EdgeInsets.only(right: 51.w),
                      child: Text(
                        'msg27'.tr.toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray90002_1
                            .copyWith(height: 1.33),
                      ),
                    ),
                    SizedBox(
                      width: 224.w,
                      child: Text(
                        'msg28'.tr.toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray90002_1
                            .copyWith(height: 1.33),
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Text(
                      'msg29'.tr.toUpperCase(),
                      style: CustomTextStyles.bodySmallGray90002_1,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 91.h,
                width: 117.w,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: Assets.svg.imgVectorGray9000491x86.path,
                      height: 91.h,
                      width: 86.w,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 13.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 3.h,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.h),
                            Text(
                              'lbl81'.tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray90002_1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage25.path,
                      height: 84.r,
                      width: 84.r,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 2.h,
                        right: 1.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
