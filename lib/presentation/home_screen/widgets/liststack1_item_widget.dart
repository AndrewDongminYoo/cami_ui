import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Liststack1ItemWidget extends StatelessWidget {
  const Liststack1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 318.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 318.v,
              width: 329.h,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 286.v,
              width: 329.h,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 256.v,
              width: 329.h,
              decoration: BoxDecoration(
                color: appTheme.gray50,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.gray5004c,
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorGray90004,
            height: 12.v,
            width: 16.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 70.v,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 112.v,
              width: 234.h,
              margin: EdgeInsets.only(left: 24.h),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 16.v,
              width: 281.h,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 72.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 84.adaptSize,
              width: 84.adaptSize,
              margin: EdgeInsets.only(
                top: 4.v,
                right: 1.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 84.adaptSize,
              width: 84.adaptSize,
              margin: EdgeInsets.only(
                top: 4.v,
                right: 1.h,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgImage84x84,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorGray9000491x86,
            height: 91.v,
            width: 86.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 28.v,
              width: 47.h,
              margin: EdgeInsets.only(
                top: 52.v,
                right: 70.h,
              ),
              decoration: BoxDecoration(
                color: appTheme.yellow400,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 220.h,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 101.v,
              ),
              child: Text(
                "msg25".tr.toUpperCase(),
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray90004_1.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 133.v,
              ),
              child: Text(
                "msg26".tr.toUpperCase(),
                style: CustomTextStyles.bodySmallGray90004_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 224.h,
              margin: EdgeInsets.only(left: 24.h),
              child: Text(
                "msg27".tr.toUpperCase(),
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray90004_1.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 232.h,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 105.v,
              ),
              child: Text(
                "msg28".tr.toUpperCase(),
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray90004_1.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                bottom: 73.v,
              ),
              child: Text(
                "msg29".tr.toUpperCase(),
                style: CustomTextStyles.bodySmallGray90004_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 57.v,
                right: 82.h,
              ),
              child: Text(
                "lbl81".tr.toUpperCase(),
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallGray90004_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
