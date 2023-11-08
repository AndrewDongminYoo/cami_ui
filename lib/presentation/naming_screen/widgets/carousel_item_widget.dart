import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselItemWidget extends StatelessWidget {
  const CarouselItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 186.v,
          width: 329.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 186.v,
          width: 329.h,
          margin: EdgeInsets.only(left: 20.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 186.v,
          width: 329.h,
          margin: EdgeInsets.only(left: 20.h),
        ),
      ],
    );
  }
}
