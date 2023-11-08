import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpertprofilesItemWidget extends StatelessWidget {
  const ExpertprofilesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: theme.colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: 180.v,
                width: 337.h,
                decoration: AppDecoration.outlineBlueGrayB.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 13.v,
                        ),
                        child: Text(
                          "lbl64".tr,
                          style: CustomTextStyles.bodySmallGreen300,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 180.v,
                        width: 321.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 16.v),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_n".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray90002_2,
                                    ),
                                    Text(
                                      "msg23".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray90002_2,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                              "msg_ebs".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90002_2,
                                            ),
                                          ),
                                          Text(
                                            "lbl78".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray90002_2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage180x168,
                              height: 180.v,
                              width: 168.h,
                              alignment: Alignment.centerRight,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 39.v),
                                child: Text(
                                  "lbl65".tr,
                                  style: CustomTextStyles.bodyLargeGray90002,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 60,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.h),
              padding: EdgeInsets.symmetric(vertical: 15.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl66".tr,
                          style: CustomTextStyles.bodySmallGreen300,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 255.h),
                          child: Text(
                            "lbl68".tr,
                            style: CustomTextStyles.bodySmallGreen300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl67".tr,
                          style: CustomTextStyles.bodyLargeGray90002,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 971.h),
                          child: Text(
                            "lbl77".tr,
                            style: CustomTextStyles.bodyLargeGray90002,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                ],
              ),
            ),
            SizedBox(
              height: 180.v,
              width: 337.h,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.h),
                decoration: AppDecoration.outlineBlueGrayB.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 180.v,
                      width: 337.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 180.v,
                              width: 337.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
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
                            imagePath: ImageConstant.imgImage20,
                            height: 180.v,
                            width: 168.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180.v,
                      width: 337.h,
                      margin: EdgeInsets.only(left: 20.h),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 180.v,
                              width: 337.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
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
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                bottom: 15.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl69".tr,
                                    style: CustomTextStyles.bodyLargeGray90002,
                                  ),
                                  SizedBox(height: 63.v),
                                  Text(
                                    "lbl70".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                  Text(
                                    "lbl71".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage21,
                            height: 180.v,
                            width: 168.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 180.v,
                      width: 321.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage22,
                            height: 180.v,
                            width: 168.h,
                            alignment: Alignment.centerRight,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15.v),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "lbl72".tr,
                                      style: CustomTextStyles.bodySmallGreen300,
                                    ),
                                  ),
                                  SizedBox(height: 8.v),
                                  Text(
                                    "lbl73".tr,
                                    style: CustomTextStyles.bodyLargeGray90002,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15.v),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl74".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                  Text(
                                    "lbl75".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180.v,
                      width: 337.h,
                      margin: EdgeInsets.only(left: 20.h),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 180.v,
                              width: 337.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
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
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 15.v,
                              ),
                              child: Text(
                                "lbl76".tr,
                                style: CustomTextStyles.bodySmallGreen300,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage23,
                            height: 180.v,
                            width: 168.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180.v,
                      width: 337.h,
                      margin: EdgeInsets.only(left: 20.h),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 180.v,
                              width: 337.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
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
                            imagePath: ImageConstant.imgImage24,
                            height: 180.v,
                            width: 168.h,
                            alignment: Alignment.centerRight,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl79".tr,
                                    style: CustomTextStyles.bodySmallGreen300,
                                  ),
                                  SizedBox(height: 8.v),
                                  Text(
                                    "lbl80".tr,
                                    style: CustomTextStyles.bodyLargeGray90002,
                                  ),
                                  SizedBox(height: 63.v),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 121.h,
                                        margin: EdgeInsets.only(bottom: 19.v),
                                        child: Text(
                                          "msg_kpa_ctp_ccpdt_ka".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallGray90002
                                              .copyWith(
                                            height: 1.77,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 236.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_12".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90002_2,
                                            ),
                                            Text(
                                              "msg24".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90002_2,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 5,
            ),
            Container(
              height: 39.v,
              width: 131.h,
              margin: EdgeInsets.only(
                top: 126.v,
                bottom: 15.v,
              ),
            ),
            Spacer(
              flex: 33,
            ),
            SizedBox(
              height: 180.v,
              width: 337.h,
            ),
          ],
        ),
      ),
    );
  }
}
