import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutpageItemWidget extends StatelessWidget {
  const AboutpageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 62.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlueGrayB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_9_62".tr,
            style: CustomTextStyles.bodySmallBlack90010,
          ),
          Text(
            "lbl_153".tr,
            style: CustomTextStyles.bodySmallBlack90010,
          ),
          Text(
            "lbl262".tr,
            style: CustomTextStyles.bodySmallBlack90010,
          ),
        ],
      ),
    );
  }
}
