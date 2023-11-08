import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimaltypetestItemWidget extends StatelessWidget {
  const AnimaltypetestItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "lbl98".tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          SizedBox(height: 5.v),
          Text(
            "msg_vs".tr,
            style: CustomTextStyles.bodySmallGray600,
          ),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage59x67,
            height: 59.v,
            width: 67.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
