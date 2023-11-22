// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
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
                        '호기심으로 해봤는데 너무 잘 맞는거 같아요 너무 신기하네요.'.tr(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall!
                            .colored(const Color(0xFF1F2020))
                            .tight,
                      ),
                    ),
                    Text(
                      '어쩜 이렇게 정확한지 신기해요.'.tr(),
                      style:
                          textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
                    ),
                    Container(
                      width: 229.w,
                      margin: EdgeInsets.only(right: 51.w),
                      child: Text(
                        '자세한 방법과 조언이 너무 좋네요 강아지 기르면서 참고할게 너무 많아졌어요.'.tr(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall!
                            .colored(const Color(0xFF1F2020))
                            .tight,
                      ),
                    ),
                    SizedBox(
                      width: 224.w,
                      child: Text(
                        '조언을 바탕으로 강아지를 더 이해하게 되었어요 감사해요.'.tr(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall!
                            .colored(const Color(0xFF1F2020))
                            .tight,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Text(
                      '"만두" 보호자님의 "반려견 성격유형검사" 후기'.tr(),
                      style:
                          textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
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
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.h),
                          Text(
                            '만두'.tr(),
                            style: textTheme.bodySmall!
                                .colored(const Color(0xFF1F2020)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: Assets.images.reviews.dcsiIi.path,
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
          ],
        ),
      ),
    );
  }
}
