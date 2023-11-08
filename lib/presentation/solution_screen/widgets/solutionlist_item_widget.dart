import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SolutionlistItemWidget extends StatelessWidget {
  const SolutionlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage161x343,
        height: 161.v,
        width: 343.h,
      ),
    );
  }
}
