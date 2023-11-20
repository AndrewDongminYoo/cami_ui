import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorreviewsItemWidget extends StatelessWidget {
  const DoctorreviewsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray1006b.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage20,
            height: 173.adaptSize,
            width: 173.adaptSize,
          ),
          SizedBox(height: 1.v),
          Container(
            width: 173.h,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl66".tr,
                  style: CustomTextStyles.bodySmallBluegray70001,
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl67".tr,
                  style: CustomTextStyles.bodyLargeGray90002,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_knollo".tr,
                  style: CustomTextStyles.bodySmallGray50010_1,
                ),
                Text(
                  "msg_ebs2".tr,
                  style: CustomTextStyles.bodySmallGray50010_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
