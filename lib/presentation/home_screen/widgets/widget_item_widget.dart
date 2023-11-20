import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 284.v,
        width: 342.h,
        margin: EdgeInsets.only(right: 19.h),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 40.v,
                ),
                decoration: AppDecoration.outlineGrayC.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameGray90002,
                      height: 13.v,
                      width: 17.h,
                    ),
                    SizedBox(height: 18.v),
                    Container(
                      width: 231.h,
                      margin: EdgeInsets.only(right: 50.h),
                      child: Text(
                        "msg25".tr.toUpperCase(),
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray90002_1.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Text(
                      "msg26".tr.toUpperCase(),
                      style: CustomTextStyles.bodySmallGray90002_1,
                    ),
                    Container(
                      width: 234.h,
                      margin: EdgeInsets.only(right: 47.h),
                      child: Text(
                        "msg27".tr.toUpperCase(),
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray90002_1.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Container(
                      width: 231.h,
                      margin: EdgeInsets.only(right: 50.h),
                      child: Text(
                        "msg28".tr.toUpperCase(),
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray90002_1.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "msg29".tr.toUpperCase(),
                      style: CustomTextStyles.bodySmallGray90002_1,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 91.v,
                width: 117.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGray9000491x86,
                      height: 91.v,
                      width: 86.h,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 13.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.fillYellow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "lbl81".tr.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallGray90002_1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage25,
                      height: 84.adaptSize,
                      width: 84.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        right: 1.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
