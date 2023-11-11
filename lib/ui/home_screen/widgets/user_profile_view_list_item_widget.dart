// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class UserProfileViewListItemWidget extends StatelessWidget {
  const UserProfileViewListItemWidget({super.key});

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
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: Assets.images.imgImage15.path,
              height: 159.h,
              width: 335.w,
            ),
          ),
          SizedBox(height: 13.h),
          CustomElevatedButton(
            height: 24.h,
            width: 53.w,
            text: 'DCSI-II'.tr,
            margin: EdgeInsets.only(left: 14.w),
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Text(
              '강아지 MBTI'.tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 7.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Text(
              '16가지의 성격 유형, 멍BTI로 내 강아지의 성격 바로 알기'.tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 39.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Row(
              children: [
                Text(
                  '자세히 보기'.tr,
                  style: CustomTextStyles.bodySmallGray700,
                ),
                CustomImageView(
                  imagePath: Assets.svg.imgArrowdownGray700.path,
                  height: 10.h,
                  width: 6.w,
                  margin: EdgeInsets.only(
                    left: 8.w,
                    top: 6.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h),
        ],
      ),
    );
  }
}
