import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileviewItemWidget extends StatelessWidget {
  UserprofileviewItemWidget({
    Key? key,
    this.onTapView,
  }) : super(
          key: key,
        );

  VoidCallback? onTapView;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 342.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onTapView!.call();
              },
              child: Container(
                height: 342.v,
                width: 361.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                  border: Border.all(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 170.v,
              width: 359.h,
              margin: EdgeInsets.only(top: 1.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 170.v,
              width: 359.h,
              margin: EdgeInsets.only(top: 1.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgImage170x359,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 24.v,
              width: 39.h,
              margin: EdgeInsets.only(
                left: 15.h,
                bottom: 133.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray90004,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                bottom: 17.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl50".tr,
                    style: CustomTextStyles.bodyMediumGray90004,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 315.h,
                    child: Text(
                      "msg14".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray800.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Row(
                    children: [
                      Text(
                        "lbl51".tr,
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorGray700,
                        height: 7.v,
                        width: 4.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 7.v,
                          bottom: 2.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                bottom: 136.v,
              ),
              child: Text(
                "lbl_dpai".tr,
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
