import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileframelistItemWidget extends StatelessWidget {
  const UserprofileframelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage170x359,
              height: 170.v,
              width: 359.h,
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 24.v,
            width: 39.h,
            text: "lbl_dpai".tr,
            margin: EdgeInsets.only(left: 14.h),
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl50".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 315.h,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 30.h,
            ),
            child: Text(
              "msg14".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(
              children: [
                Text(
                  "lbl51".tr,
                  style: CustomTextStyles.bodySmallGray700,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowdownGray700,
                  height: 10.v,
                  width: 6.h,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    top: 6.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
