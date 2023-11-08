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

class UserProfileFrameListItemWidget extends StatelessWidget {
  const UserProfileFrameListItemWidget({super.key});

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
              imagePath: Assets.images.imgImage170x359.path,
              height: 170.h,
              width: 359.w,
            ),
          ),
          SizedBox(height: 14.h),
          CustomElevatedButton(
            height: 24.h,
            width: 39.w,
            text: 'lbl_dpai'.tr,
            margin: EdgeInsets.only(left: 14.w),
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Text(
              'lbl50'.tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            width: 315.w,
            margin: EdgeInsets.only(
              left: 14.w,
              right: 30.w,
            ),
            child: Text(
              'msg14'.tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallPrimaryContainer
                  .copyWith(height: 1.33),
            ),
          ),
          SizedBox(height: 23.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Row(
              children: [
                Text(
                  'lbl51'.tr,
                  style: CustomTextStyles.bodySmallGray700,
                ),
                CustomImageView(
                  imagePath: Assets.svg.imgArrowdownGray700.path,
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
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
