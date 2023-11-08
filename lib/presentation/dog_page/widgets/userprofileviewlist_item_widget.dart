import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileviewlistItemWidget extends StatelessWidget {
  const UserprofileviewlistItemWidget({Key? key})
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
              imagePath: ImageConstant.imgImage15,
              height: 170.v,
              width: 359.h,
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 24.v,
            width: 53.h,
            text: "lbl_dcsi_ii".tr,
            margin: EdgeInsets.only(left: 14.h),
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl_mbti".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_16_bti".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 39.v),
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
