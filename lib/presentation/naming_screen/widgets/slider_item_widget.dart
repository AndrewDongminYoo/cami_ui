import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage186x329,
            height: 186.v,
            width: 329.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 186.v,
            width: 329.h,
            margin: EdgeInsets.only(left: 20.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage6,
            height: 186.v,
            width: 329.h,
            margin: EdgeInsets.only(left: 20.h),
          ),
        ],
      ),
    );
  }
}
